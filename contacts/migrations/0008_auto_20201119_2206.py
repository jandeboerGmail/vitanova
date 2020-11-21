# Generated by Django 3.1.2 on 2020-11-19 21:06

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0007_auto_20201117_1739'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='band',
            options={'verbose_name_plural': 'bands'},
        ),
        migrations.AlterModelOptions(
            name='cateraar',
            options={'verbose_name_plural': 'cateraars'},
        ),
        migrations.AlterModelOptions(
            name='contact',
            options={'verbose_name_plural': 'contacts'},
        ),
        migrations.AlterModelOptions(
            name='evenement',
            options={'verbose_name_plural': 'evenementen'},
        ),
        migrations.AlterModelOptions(
            name='fanclub',
            options={'verbose_name_plural': 'fanclubs'},
        ),
        migrations.AlterModelOptions(
            name='zaal',
            options={'verbose_name_plural': 'zalen'},
        ),
        migrations.AlterField(
            model_name='zaal',
            name='vergunning_datum',
            field=models.DateField(blank=True, default=django.utils.timezone.now),
        ),
    ]
