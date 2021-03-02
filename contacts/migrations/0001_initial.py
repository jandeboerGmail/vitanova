# Generated by Django 3.1.3 on 2021-01-28 13:40

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Band',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50, unique=True)),
                ('aantal_leden', models.DecimalField(decimal_places=0, default=1, max_digits=6)),
                ('genre', models.CharField(blank=True, max_length=30)),
                ('instrumenten', models.IntegerField(choices=[(0, 'Eigen'), (1, 'Huur')], default=0)),
                ('technicus', models.BooleanField(default=True)),
                ('aantal_autos', models.DecimalField(decimal_places=0, default=0, max_digits=2)),
                ('soort', models.IntegerField(choices=[(0, 'Gage'), (1, 'Zzp'), (2, 'Artiest'), (3, 'Buro')], default=0)),
                ('bedrag', models.DecimalField(decimal_places=2, default=0, max_digits=6)),
                ('rekening_nr', models.CharField(blank=True, default='NL', max_length=18)),
                ('website', models.URLField(blank=True)),
                ('memo', models.TextField(blank=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='media')),
                ('slug', models.SlugField(default='slug', max_length=120)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
            ],
            options={
                'verbose_name_plural': 'bands',
            },
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=128, unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='Cateraar',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50, unique=True)),
                ('soort', models.CharField(blank=True, max_length=50)),
                ('catering_prijs', models.DecimalField(decimal_places=2, default=0, max_digits=8)),
                ('rekening_nr', models.CharField(blank=True, default='NL', max_length=18)),
                ('website', models.URLField(blank=True)),
                ('memo', models.TextField(blank=True)),
                ('slug', models.SlugField(default='slug', max_length=120)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
            ],
            options={
                'verbose_name_plural': 'cateraars',
            },
        ),
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50)),
                ('voornaam', models.CharField(blank=True, max_length=20)),
                ('adres', models.CharField(blank=True, max_length=50)),
                ('postcode', models.CharField(blank=True, max_length=6)),
                ('plaats', models.CharField(blank=True, max_length=50)),
                ('telefoon', models.CharField(blank=True, max_length=16)),
                ('mobiel', models.CharField(blank=True, max_length=16)),
                ('emailadress', models.EmailField(blank=True, max_length=254)),
                ('soort', models.IntegerField(choices=[(0, 'Contact'), (1, 'Lid'), (2, 'Donateur'), (3, 'Erelid'), (4, 'Artiest'), (5, 'Catering'), (6, 'Art Buro'), (7, 'Bandleider'), (8, 'Technicus'), (9, 'Beheerder'), 10, 'Media'], default=0)),
                ('soort_lid', models.IntegerField(choices=[(0, 'Blanco'), (1, 'Brons'), (2, 'Zilver'), (3, 'Goud')], default=0)),
                ('rekening_nr', models.CharField(blank=True, default='NL', max_length=18)),
                ('status', models.IntegerField(choices=[(0, 'New'), (1, 'Actief'), (2, 'Verwijderen')], default=0)),
                ('image', models.ImageField(blank=True, null=True, upload_to='media')),
                ('memo', models.TextField(blank=True)),
                ('slug', models.SlugField(default='slug', max_length=120)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
            ],
            options={
                'verbose_name_plural': 'contacts',
            },
        ),
        migrations.CreateModel(
            name='Zaal',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50, unique=True)),
                ('postcode', models.CharField(max_length=6)),
                ('adress', models.CharField(max_length=50)),
                ('plaats', models.CharField(max_length=50)),
                ('telefoon', models.CharField(blank=True, max_length=16)),
                ('website', models.CharField(blank=True, max_length=50)),
                ('volt440', models.BooleanField(default=False)),
                ('hulp_nodig', models.BooleanField(default=False)),
                ('vergunning_vereist', models.BooleanField(default=False)),
                ('vergunning_aangevraagd', models.BooleanField(default=False)),
                ('vergunning_datum', models.DateField(default=django.utils.timezone.now)),
                ('slug', models.SlugField(default='slug', max_length=120)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
                ('contact', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.contact')),
            ],
            options={
                'verbose_name_plural': 'zalen',
            },
        ),
        migrations.CreateModel(
            name='Page',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=128)),
                ('url', models.URLField()),
                ('views', models.IntegerField(default=0)),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.category')),
            ],
        ),
        migrations.CreateModel(
            name='Fanclub',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50, unique=True)),
                ('website', models.CharField(blank=True, max_length=50)),
                ('aantal_leden', models.DecimalField(decimal_places=0, default=1, max_digits=6)),
                ('memo', models.TextField(blank=True)),
                ('slug', models.SlugField(default='slug', max_length=120)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
                ('contact', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.contact')),
            ],
            options={
                'verbose_name_plural': 'fanclubs',
            },
        ),
        migrations.CreateModel(
            name='Evenement',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50, unique=True)),
                ('datum', models.DateTimeField(default=django.utils.timezone.now)),
                ('aanvang', models.TimeField()),
                ('einde', models.TimeField()),
                ('zaal_open', models.TimeField()),
                ('thema', models.CharField(max_length=50)),
                ('entree_prijs', models.DecimalField(decimal_places=2, default=0, max_digits=6)),
                ('voorverkoop_prijs', models.DecimalField(decimal_places=2, default=0, max_digits=6)),
                ('opbrengst', models.DecimalField(decimal_places=2, default=0, max_digits=8)),
                ('zitplaatsen', models.DecimalField(decimal_places=0, default=0, max_digits=8)),
                ('website', models.URLField(blank=True)),
                ('memo', models.TextField(blank=True)),
                ('slug', models.SlugField(default='slug', max_length=120)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
                ('band', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.band')),
                ('beheerder', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.contact')),
                ('catering', models.ForeignKey(default=' ', on_delete=django.db.models.deletion.CASCADE, to='contacts.cateraar')),
                ('locatie', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.zaal')),
            ],
            options={
                'verbose_name_plural': 'evenementen',
            },
        ),
        migrations.AddField(
            model_name='cateraar',
            name='contact',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.contact'),
        ),
        migrations.AddField(
            model_name='band',
            name='contact',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.contact'),
        ),
    ]
