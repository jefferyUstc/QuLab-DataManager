from django.contrib import admin
from django.forms.widgets import RadioSelect
from django.db import models

from .models import Article, Data, Metadata, Annotation, CellType


class MetadataInline(admin.StackedInline):
    model = Metadata
    extra = 0


class DataInline(admin.StackedInline):
    model = Data
    extra = 0
    filter_horizontal = ('cell_type',)


class AnnotationInline(admin.StackedInline):
    formfield_overrides = {
      models.BooleanField: {'widget': RadioSelect(choices=((True, 'Yes'), (False, 'No')))},
     }
    model = Annotation
    extra = 0


class AnnotationAdmin(admin.ModelAdmin):
    formfield_overrides = {
      models.BooleanField: {'widget': RadioSelect(choices=((True, 'Yes'), (False, 'No')))},
     }


class ArticleAdmin(admin.ModelAdmin):
    # forms = AnnotationForm
    inlines = [DataInline, AnnotationInline, MetadataInline]
    # list_display = ('id', 'file', 'article', 'up_time')


# class ArticleZHAdmin(admin.ModelAdmin):
    # forms = AnnotationForm
    # inlines = [DataInline, AnnotationInline, MetadataInline]
    # list_display = ('id', 'file', 'article', 'up_time')


class DataAdmin(admin.ModelAdmin):
    # inlines = [DataInline]
    list_display = ('file_name', 'article', 'data_type', 'disease_organ')
    filter_horizontal = ('cell_type',)


admin.site.site_header = "ScFinder Admin"
admin.site.site_title = "ScFinder"
admin.site.index_title = "Welcome to ScFinder"
# admin.site.register(Data, DataAdmin)
admin.site.register(Article, ArticleAdmin)
# admin.site.register(ArticleZH)
# admin.site.register(Metadata)
admin.site.register(CellType)
# admin.site.register(Annotation, AnnotationAdmin)
