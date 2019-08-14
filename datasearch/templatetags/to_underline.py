from django import template

register = template.Library()


@register.filter
def space_to_(value):
    return value.replace(' ', '_')
