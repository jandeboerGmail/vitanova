# Generated by Django 3.1.2 on 2020-10-23 10:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0004_auto_20200915_0838'),
    ]

    operations = [
        migrations.AddField(
            model_name='evenement',
            name='opbrengst',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=8),
        ),
    ]
