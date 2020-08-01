from django import forms
from snowpenguin.django.recaptcha3.fields import ReCaptchaField

from .models import Contact


class ContactsForm(forms.ModelForm):
    """Форма для подписки по email"""
    captcha = ReCaptchaField()

    class Meta:
        model = Contact
        fields = ['email', 'captcha']
        widgets = {
            "email": forms.EmailInput(attrs={"class": "form-control border", 'placeholder': "Ваш email..."}),
        }
        labels = {
            'email': ''
        }