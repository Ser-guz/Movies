# Generated by Django 3.0.5 on 2020-05-03 08:34

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movies_app', '0003_auto_20200502_0802'),
    ]

    operations = [
        migrations.RenameField(
            model_name='movie',
            old_name='actor',
            new_name='actors',
        ),
    ]