# Generated by Django 3.1.3 on 2021-08-11 09:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0018_remove_ticket_slug'),
    ]

    operations = [
        migrations.AddField(
            model_name='evenement',
            name='activiteiten_info_2',
            field=models.CharField(default='Tombola met mooie prijzen', max_length=30),
        ),
    ]
