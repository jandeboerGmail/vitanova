# Generated by Django 3.1.2 on 2020-11-19 21:41

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0008_auto_20201119_2206'),
    ]

    operations = [
        migrations.RenameField(
            model_name='zaal',
            old_name='vergunning_aaangevraagd',
            new_name='vergunning_aangevraagd',
        ),
        migrations.AlterField(
            model_name='zaal',
            name='vergunning_datum',
            field=models.DateField(default=django.utils.timezone.now),
        ),
    ]
