from django import template
from contact_sub.forms import ContactsForm

register = template.Library()


@register.inclusion_tag('contact_sub/tags/sub_form.html')
def contacts():
    return {'contact_form': ContactsForm()}
