from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from django.views import generic
from django.db.models import Q
from django.http import JsonResponse

from .models import Article, CellType
import datetime
import functools
import operator


def ajax_get(request):
    data_class = request.GET['data_class']
    cell_type = request.GET['cell_type']
    cell_type = cell_type.split(';')
    cell_type_list = Article.objects.filter(
        functools.reduce(operator.or_, (Q(data__cell_type__type=word) for word in cell_type))
    )
    articles = Article.objects.order_by('pub_time').filter(Q(data__data_class=data_class))
    if "All" not in cell_type:
        articles = articles & cell_type_list

    return render(request, 'datasearch/index_body.html', {'latest_articles': articles})


def get_js(root):

    def dfs(root, js):
        nodes = root.children.all()
        if len(nodes) > 0:
            js += ',children:['
            for x in nodes:
                if len(x.children.all()) > 0:
                    js += '{name:"' + str(x) + '", open:true'
                    js += dfs(x, '')
                else:
                        js += ' {name:"' + str(x) + '"},'
            js += ']},'
        return js

    tree_js = 'var zNodes = [{name:"' + str(root) + '", open:true'
    tree_js += dfs(root, '')
    tree_js += '];'
    return tree_js


class IndexView(generic.TemplateView):
    template_name = 'datasearch/index.html'
    all = CellType.objects.get(parent=None)
    tree_js = get_js(all)

    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        context['latest_articles'] = Article.objects.order_by('pub_time')
        context['tree_js'] = self.tree_js
        return context


class ArticleView(generic.DetailView):
    template_name = 'datasearch/detail.html'
    model = Article


class ResultView(generic.View):
    template_name = 'datasearch/result.html'
    context_object_name = 'result_list'

    def post(self, request):
        pub_time = request.POST['pub_time']
        data_class = request.POST['data_class']
        species = request.POST['species']
        cell_type = request.POST['cell_type']
        cell_type = cell_type.split(';')
        data_type = request.POST['data_type']
        data_des = request.POST['data_des']
        # article_name_words = str(article_name).split(' ')
        # article_name_list = Article.objects.filter(functools.reduce(
        #     operator.and_, (Q(article_name__icontains=word) for word in article_name_words))
        # )
        data_des_words = str(data_des).split(' ')
        data_des_list = Article.objects.filter(functools.reduce(
            operator.and_,
            (
                (
                    Q(data__disease_organ__icontains=word) |
                    Q(annotation__summary__icontains=word) |
                    Q(data__tech_type__icontains=word) |
                    Q(data__seq_platform__icontains=word) |
                    Q(article_name__icontains=word)
                ) for word in data_des_words)
            )
        )
        cell_type_list = Article.objects.filter(
            functools.reduce(operator.or_, (Q(data__cell_type__type=word) for word in cell_type))
        )
        today = datetime.date.today()
        result_list = Article.objects.order_by('pub_time').filter(
            Q(pub_time__year__gte=today.year - int(pub_time)) &
            Q(data__data_class=data_class) & Q(data__species__icontains=species) &
            Q(data__data_type=data_type) & Q(p_id__in=data_des_list)
        )
        if "All" not in cell_type:
            # temp = Article.objects.order_by('pub_time').filter(Q(p_id__in=cell_type_list))
            result_list = result_list & cell_type_list
        return render(request, self.template_name, {'result_list': result_list})


def search(request):
    all = CellType.objects.get(parent=None)
    tree_js = get_js(all)

    context = {
        'tree_js': tree_js,
    }

    return render(request, 'datasearch/search.html', context)


'''
def index(request):
    latest_articles = Article.objects.order_by("pub_time")
    context = {'latest_articles': latest_articles}
    return render(request, "datasearch/index.html", context)


def detail(request, p_id):
    article = get_object_or_404(Article, pk=p_id)
    data = article.data_set.all()
    annotations = article.annotation
    meta = article.metadata_set.all()
    return render(request, "datasearch/detail.html", {"article": article, "data": data, 'annotations': annotations, 'meta': meta})
'''