# Generated by Django 3.1.3 on 2021-08-11 10:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0019_evenement_activiteiten_info_2'),
    ]

    operations = [
        migrations.AlterField(
            model_name='evenement',
            name='activiteiten_info_2',
            field=models.CharField(blank=True, max_length=30),
        ),
    ]
