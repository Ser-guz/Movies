from django.shortcuts import render
from django.views.generic import CreateView

from .forms import ContactsForm
from .models import Contact


class ContactView(CreateView):
    model = Contact
    form_class = ContactsForm
    success_url = '/'
