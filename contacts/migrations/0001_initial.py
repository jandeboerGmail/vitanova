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
            name='Band',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50, unique=True)),
                ('soort', models.CharField(blank=True, max_length=50)),
                ('aantal_leden', models.DecimalField(decimal_places=0, default=1, max_digits=6)),
                ('rekening_nr', models.CharField(blank=True, default='NL', max_length=18)),
                ('memo', models.TextField(blank=True)),
                ('image', models.ImageField(default='default.jpg', height_field=100, upload_to='../media', width_field=100)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
            ],
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=128, unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50)),
                ('postcode', models.CharField(max_length=6)),
                ('adress', models.CharField(max_length=50)),
                ('plaats', models.CharField(max_length=50)),
                ('telefoon', models.DecimalField(decimal_places=0, default=0, max_digits=11)),
                ('mobiel', models.DecimalField(decimal_places=0, default=0, max_digits=11)),
                ('emailadress', models.EmailField(max_length=254)),
                ('soort', models.IntegerField(choices=[(0, 'Lid'), (1, 'Erelid'), (2, 'Artiest'), (3, 'Catering'), (4, 'Contact')], default=4)),
                ('rekening_nr', models.CharField(blank=True, default='NL', max_length=18)),
                ('status', models.IntegerField(choices=[(0, 'New'), (1, 'Actief'), (2, 'Verwijderen')], default=0)),
                ('memo', models.TextField(blank=True)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
            ],
        ),
        migrations.CreateModel(
            name='Zaal',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50, unique=True)),
                ('postcode', models.CharField(max_length=6)),
                ('adress', models.CharField(max_length=50)),
                ('plaats', models.CharField(max_length=50)),
                ('telefoon', models.DecimalField(decimal_places=0, default=0, max_digits=11)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
                ('contact', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.Contact')),
            ],
        ),
        migrations.CreateModel(
            name='Page',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=128)),
                ('url', models.URLField()),
                ('views', models.IntegerField(default=0)),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.Category')),
            ],
        ),
        migrations.CreateModel(
            name='Fanclub',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50, unique=True)),
                ('aantal_leden', models.DecimalField(decimal_places=0, default=1, max_digits=6)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
                ('contact', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.Contact')),
            ],
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
                ('gage', models.DecimalField(decimal_places=0, default=0, max_digits=4)),
                ('betaling', models.IntegerField(choices=[(0, 'Bank'), (1, 'Cash')], default=0)),
                ('soort_overeenkomst', models.CharField(blank=True, max_length=50)),
                ('thema', models.CharField(max_length=50)),
                ('entree_prijs', models.DecimalField(decimal_places=2, default=0, max_digits=6)),
                ('voorverkoop_prijs', models.DecimalField(decimal_places=2, default=0, max_digits=6)),
                ('zitplaatsen', models.DecimalField(decimal_places=0, default=0, max_digits=8)),
                ('vergunning_vereist', models.BooleanField()),
                ('vergunning_aaangevraagd', models.BooleanField()),
                ('vergunning_datum', models.DateField(blank=True)),
                ('volt440', models.BooleanField()),
                ('hulp_nodig', models.BooleanField()),
                ('huur', models.IntegerField(choices=[(0, 'Eigen'), (1, 'Huur')], default=0)),
                ('technicus', models.BooleanField()),
                ('aantal_autos', models.DecimalField(decimal_places=0, default=0, max_digits=2)),
                ('memo', models.TextField(blank=True)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
                ('band', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.Band')),
                ('beheerder', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.Contact')),
                ('locatie', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.Zaal')),
            ],
        ),
        migrations.CreateModel(
            name='Cateraar',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('naam', models.CharField(max_length=50, unique=True)),
                ('soort', models.CharField(blank=True, max_length=50)),
                ('rekening_nr', models.CharField(blank=True, default='NL', max_length=18)),
                ('memo', models.TextField(blank=True)),
                ('datum_inserted', models.DateTimeField(default=django.utils.timezone.now)),
                ('datum_updated', models.DateTimeField(default=django.utils.timezone.now)),
                ('contact', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.Contact')),
            ],
        ),
        migrations.AddField(
            model_name='band',
            name='contact',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='contacts.Contact'),
        ),
    ]
