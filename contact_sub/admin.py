from django.contrib import admin
from .models import Contact


@admin.register(Contact)
class ContactAdmin(admin.ModelAdmin):
    """Подписки"""
    list_display = ['id', 'email', 'data']
    list_display_links = ('email',)


admin.site.site_title = 'Проект "movies"'
admin.site.site_header = 'Проект "movies"'