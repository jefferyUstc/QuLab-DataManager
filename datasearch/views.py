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
        context['latest_articles'] = Article.objects.order_by('-pub_time')
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
        today = datetime.date.today()
        result_list = Article.objects.order_by('-pub_time').filter(
            Q(pub_time__year__gte=today.year - int(pub_time)) &
            Q(data__species__icontains=species) &
            Q(p_id__in=data_des_list)
        )
        if data_class != "":
            result_list = result_list & Article.objects.filter(Q(data__data_class=data_class))
        if data_type != "":
            result_list = result_list & Article.objects.filter(Q(data__data_type=data_type))
        if "All" not in cell_type:
            cell_type_list = Article.objects.filter(
                functools.reduce(operator.or_, (Q(data__cell_type__type=word) for word in cell_type))
            )
            result_list = result_list & cell_type_list
        return render(request, self.template_name, {'result_list': result_list.distinct()})


def search(request):
    all = CellType.objects.get(parent=None)
    tree_js = get_js(all)

    context = {
        'tree_js': tree_js,
    }

    return render(request, 'datasearch/search.html', context)
