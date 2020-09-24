# Generated by Django 3.0.8 on 2020-09-12 17:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0002_band_genre'),
    ]

    operations = [
        migrations.AlterField(
            model_name='band',
            name='bedrag',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=6),
        ),
        migrations.AlterField(
            model_name='contact',
            name='soort',
            field=models.IntegerField(choices=[(0, 'Contact'), (1, 'Lid'), (2, 'Donateur'), (3, 'Erelid'), (4, 'Artiest'), (5, 'Catering'), (6, 'Art Buro'), (7, 'Bandleider'), (8, 'Technicus'), (9, 'Beheerder')], default=0),
        ),
        migrations.AlterField(
            model_name='contact',
            name='soort_lid',
            field=models.IntegerField(choices=[(0, 'Blanco'), (1, 'Brons'), (2, 'Zilver'), (3, 'Goud')], default=0),
        ),
    ]
