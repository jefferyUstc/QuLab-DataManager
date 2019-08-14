from django.urls import path

from datasearch.views import IndexView, ArticleView, ResultView, ajax_get, search

urlpatterns = [
    path('result/', ResultView.as_view(), name='result'),
    path('', IndexView.as_view(), name='index'),
    path('<int:pk>/', ArticleView.as_view(), name="detail"),
    path('search/', search, name='search'),
    path('ajax_get/', ajax_get, name="ajax_get"),
    # path('search/', SearchView.as_view(), name='search'),
]