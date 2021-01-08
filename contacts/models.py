from django.db import models
from django.utils import timezone
from django.template.defaultfilters import slugify

# Create your models here.
class Category(models.Model):
	name = models.CharField(max_length=128, unique=True)

	def __str__(self): # For Python 2, use __unicode__ too
		return self.name

class Page(models.Model):
	category = models.ForeignKey(Category,on_delete=models.CASCADE)
	title = models.CharField(max_length=128,blank = True)
	url = models.URLField()
	views = models.IntegerField(default=0)


	def __str__(self): # For Python 2, use __unicode__ too
		return self.title

class Contact(models.Model):

	class Soorten(models.IntegerChoices):
		contact = 0
		lid = 1
		donateur = 2
		erelid = 3
		artiest = 4
		catering = 5
		art_buro = 6
		bandleider = 7
		technicus = 8
		beheerder = 9

	class Status(models.IntegerChoices):
		new = 0
		actief	= 1
		verwijderen = 2

	class Soortlid(models.IntegerChoices):
		blanco = 0
		brons	= 1
		zilver = 2
		goud = 3

	naam = models.CharField(max_length=50,blank = False)
	voornaam = models.CharField(max_length=20,blank = True)
	#inband = models.ForeignKey('Band',on_delete=models.CASCADE)
	#band = models.ManyToManyField('Band')
	adres = models.CharField(max_length=50,blank = True)
	postcode = models.CharField(max_length=6,blank = True)
	plaats = models.CharField(max_length=50,blank = True)
	telefoon = models.CharField(max_length=16,blank = True)
	mobiel = models.CharField(max_length=16,blank = True)
	emailadress = models.EmailField(max_length=254,blank = True)
	soort = models.IntegerField(choices=Soorten.choices,default=0)
	soort_lid = models.IntegerField(choices=Soortlid.choices,default=0)
	rekening_nr = models.CharField(max_length=18,blank=True,default='NL')
	status = models.IntegerField(choices=Status.choices,default=0)
	image = models.ImageField(upload_to ='media',null=True,blank=True)
	memo = models.TextField(blank = True)

	#evenement = models.ManyToManyField('models.Evenement')
	slug = models.SlugField(max_length=120,default='slug')
	datum_inserted = models.DateTimeField(default=timezone.now, blank=False)
	datum_updated = models.DateTimeField(default=timezone.now, blank =False)

	def save(self, *args, **kwargs):
		self.slug = slugify(self.naam)
		self.datum_updated = timezone.now()
		super(Contact, self).save(*args, **kwargs)

	class Meta:
		verbose_name_plural = 'contacts'

	def __str__(self): # For Python 2, use __unicode__ too
		return self.naam

class Band(models.Model):

	class Overeenkomst(models.IntegerChoices):
		gage = 0
		zzp = 1
		artiest = 2
		buro  = 3

	class Instrumenten(models.IntegerChoices):
		eigen = 0
		huur = 1

	naam = models.CharField(max_length=50,blank = False,unique=True)
	contact = models.ManyToManyField(Contact)
	#contact = models.ForeignKey(Contact,on_delete=models.CASCADE,default=0)
	#leden  = models.ManyToManyField('Contact',through = 'BandLeden')
	#soort = models.CharField(max_length=50,blank=True)
	aantal_leden = models.DecimalField(max_digits=6,decimal_places = 0,default = 1)
	genre = models.CharField(max_length=30,blank=True)
	instrumenten = models.IntegerField(choices=Instrumenten.choices,default=0)
	technicus =  models.BooleanField(blank=False,default = True)
	aantal_autos = models.DecimalField(max_digits=2,decimal_places = 0,default = 0)
	soort  = models.IntegerField(choices=Overeenkomst.choices,default=0)
	bedrag =  models.DecimalField(max_digits=6,decimal_places = 2,default = 0)
	rekening_nr = models.CharField(max_length=18,blank=True,default='NL')
	website = models.URLField(max_length=200,blank=True)
	memo = models.TextField(blank = True)
	image = models.ImageField(upload_to ='media',null=True,blank=True)
	#image2 = models.ImageField(upload_to ='media',null=True,blank=True)
	slug = models.SlugField(max_length=120,default='slug')
	datum_inserted = models.DateTimeField(default=timezone.now, blank=False)
	datum_updated = models.DateTimeField(default=timezone.now, blank=False)

	def save(self, *args, **kwargs):
		self.slug = slugify(self.naam) 
		self.datum_updated = timezone.now()
		super(Band, self).save(*args, **kwargs)

	class Meta:
		verbose_name_plural = 'bands'

	def __str__(self): # For Python 2, use __unicode__ too
		return self.naam

class Fanclub(models.Model):
	naam = models.CharField(max_length=50,blank = False,unique=True)
	website = models.CharField(max_length=50,blank=True)
	aantal_leden = models.DecimalField(max_digits=6,decimal_places = 0,default = 1)
	contact = models.ForeignKey(Contact,on_delete=models.CASCADE)
	memo = models.TextField(blank = True)
	slug = models.SlugField(max_length=120,default='slug')
	datum_inserted = models.DateTimeField(default=timezone.now,blank=False)
	datum_updated = models.DateTimeField(default=timezone.now,blank=False)

	def save(self, *args, **kwargs):
		self.slug = slugify(self.naam) 
		self.datum_updated = timezone.now()
		super(Fanclub, self).save(*args, **kwargs)

	class Meta:
		verbose_name_plural = 'fanclubs'

	def __str__(self): # For Python 2, use __unicode__ too
		return self.naam

class Zaal(models.Model):
	contact = models.ForeignKey(Contact,on_delete=models.CASCADE)
	naam = models.CharField(max_length=50,blank = False,unique=True)
	postcode = models.CharField(max_length=6,blank = False)
	adress = models.CharField(max_length=50,blank = False)
	plaats = models.CharField(max_length=50,blank = False)
	telefoon = models.CharField(max_length=16,blank = True)
	website = models.CharField(max_length=50,blank=True)
	volt440 =  models.BooleanField(blank=False,default=False)
	hulp_nodig = models.BooleanField(blank=False,default=False)
	vergunning_vereist = models.BooleanField(blank=False,default=False)
	vergunning_aangevraagd = models.BooleanField(blank=False,default=False)
	vergunning_datum = models.DateField(default=timezone.now)
	slug = models.SlugField(max_length=120,default='slug')
	datum_inserted = models.DateTimeField(default=timezone.now, blank=False)
	datum_updated = models.DateTimeField(default=timezone.now, blank=False)

	def save(self, *args, **kwargs):
		self.slug = slugify(self.naam) 
		self.datum_updated = timezone.now()
		self.vergunning_datum = timezone.now()
		super(Zaal, self).save(*args, **kwargs)

	class Meta:
		verbose_name_plural = 'zalen'

	def __str__(self): # For Python 2, use __unicode__ too
		return self.naam

class Cateraar(models.Model):
	naam = models.CharField(max_length=50,blank = False,unique=True)
	contact = models.ForeignKey(Contact,on_delete=models.CASCADE)
	soort = models.CharField(max_length=50,blank=True)
	catering_prijs = models.DecimalField(max_digits=8,decimal_places = 2,default = 0,blank=False)
	rekening_nr = models.CharField(max_length=18,blank=True,default='NL')
	website = models.URLField(max_length=200,blank=True)
	memo = models.TextField(blank = True)
	slug = models.SlugField(max_length=120,default='slug')
	datum_inserted = models.DateTimeField(default=timezone.now, blank=False)
	datum_updated = models.DateTimeField(default=timezone.now, blank=False)

	def save(self, *args, **kwargs):
		self.slug = slugify(self.naam) 
		self.datum_updated = timezone.now()
		super(Cateraar, self).save(*args, **kwargs)

	class Meta:
		verbose_name_plural = 'cateraars'

	def __str__(self): # For Python 2, use __unicode__ too
		return self.naam

class BandLeden(models.Model):
	contact = models.ForeignKey('Contact',on_delete=models.CASCADE)
	band = models.ForeignKey('Band',on_delete=models.CASCADE)

class Evenement(models.Model):
	naam = models.CharField(max_length=50,blank = False,unique=True)
	datum = models.DateTimeField(default=timezone.now, blank=False)
	aanvang = models.TimeField(auto_now=False)
	einde = models.TimeField(auto_now=False)
	zaal_open = models.TimeField(auto_now=False)
	beheerder = models.ForeignKey(Contact,on_delete=models.CASCADE)
	locatie = models.ForeignKey(Zaal,on_delete=models.CASCADE)
	catering = models.ForeignKey(Cateraar,on_delete=models.CASCADE,default = ' ')
	band = models.ForeignKey(Band,on_delete=models.CASCADE)
	thema = models.CharField(max_length=50,blank=False)
	entree_prijs = models.DecimalField(max_digits=6,decimal_places = 2,default = 0,blank=False)
	voorverkoop_prijs = models.DecimalField(max_digits=6,decimal_places = 2,default = 0,blank=False)
	opbrengst = models.DecimalField(max_digits=8,decimal_places = 2,default = 0,blank=False)
	zitplaatsen = models.DecimalField(max_digits=8,decimal_places = 0,default = 0)
	website = models.URLField(max_length=200,blank=True)
	memo = models.TextField(blank = True)
	slug = models.SlugField(max_length=120,default='slug')
	datum_inserted = models.DateTimeField(default=timezone.now, blank=False)
	datum_updated = models.DateTimeField(default=timezone.now, blank=False)

	def save(self, *args, **kwargs):
		self.slug = slugify(self.naam) 
		self.datum_updated = timezone.now()
		super(Evenement, self).save(*args, **kwargs)

	class Meta:
		verbose_name_plural = 'evenementen'

	def __str__(self): # For Python 2, use __unicode__ too
		return self.naam