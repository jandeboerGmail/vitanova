# Generated by Django 3.1.3 on 2021-04-22 15:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0011_auto_20210416_1318'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contact',
            name='soort',
            field=models.IntegerField(choices=[(0, 'Contact'), (1, 'Lid'), (2, 'Donateur'), (3, 'Erelid'), (4, 'Artiest'), (5, 'Catering'), (6, 'Art Buro'), (7, 'Bandleider'), (8, 'Technicus'), (9, 'Beheerder'), (10, 'Media'), (11, 'Dj'), (12, 'Vereniging'), (13, 'Stichting'), (14, 'Firma'), (15, 'Oosterkerk'), (16, 'Dansen'), (17, 'Acara Kampalan'), (18, 'Line Dance'), (19, 'Rock Pop')], default=0),
        ),
    ]