# Generated by Django 3.1.3 on 2021-04-16 11:18

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0010_auto_20210415_1752'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='band',
            options={'ordering': ['naam'], 'verbose_name_plural': 'bands'},
        ),
        migrations.AlterModelOptions(
            name='cateraar',
            options={'ordering': ['naam'], 'verbose_name_plural': 'cateraars'},
        ),
        migrations.AlterModelOptions(
            name='contact',
            options={'ordering': ['naam'], 'verbose_name_plural': 'contacts'},
        ),
        migrations.AlterModelOptions(
            name='evenement',
            options={'ordering': ['naam'], 'verbose_name_plural': 'evenementen'},
        ),
        migrations.AlterModelOptions(
            name='zaal',
            options={'ordering': ['naam'], 'verbose_name_plural': 'zalen'},
        ),
    ]
