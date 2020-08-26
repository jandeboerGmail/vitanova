# Generated by Django 3.0.8 on 2020-08-26 12:48

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Contacts',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('voornaam', models.CharField(blank=True, max_length=50)),
                ('achternaam', models.CharField(blank=True, max_length=50)),
                ('emailadress', models.EmailField(blank=True, max_length=254)),
                ('postcode', models.CharField(blank=True, max_length=6)),
                ('adress', models.CharField(blank=True, max_length=50)),
                ('plaats', models.CharField(blank=True, max_length=50)),
                ('telefoon', models.DecimalField(decimal_places=10, default=0, max_digits=11)),
                ('mobiel', models.DecimalField(decimal_places=10, default=0, max_digits=11)),
                ('soort', models.IntegerField(choices=[(0, 'Lid'), (1, 'Erelid'), (2, 'Artiest'), (3, 'Catering'), (4, 'Contact')], default=4)),
                ('memo', models.TextField(blank=True)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
            ],
        ),
        migrations.CreateModel(
            name='Fanclubs',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(blank=True, max_length=50)),
                ('aantal', models.CharField(blank=True, max_length=50)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
                ('contact', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='fanclub.Contacts')),
            ],
        ),
    ]
