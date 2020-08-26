from django.db import models
from django.utils import timezone

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
		lid = 0
		erelid = 1
		artiest = 2
		catering = 3
		contact = 4

	class Status(models.IntegerChoices):
		new = 0
		actief	= 1
		verwijderen = 2

	naam = models.CharField(max_length=50,blank = False)
	emailadress = models.EmailField(max_length=254,blank = False)
	postcode = models.CharField(max_length=6,blank = False)
	adress = models.CharField(max_length=50,blank = False)
	plaats = models.CharField(max_length=50,blank = False)
	telefoon = models.DecimalField(max_digits=11,decimal_places = 0,default = 0)
	mobiel = models.DecimalField(max_digits=11,decimal_places = 0,default = 0)
	emailadress = models.EmailField(max_length=254,blank = False)
	soort = models.IntegerField(choices=Soorten.choices,default=4)
	rekening_nr = models.CharField(max_length=18,blank=True,default='NL')
	status = models.IntegerField(choices=Status.choices,default=0)
	memo = models.TextField(blank = True)
	datum_inserted = models.DateTimeField(default=timezone.now, blank=False) 
	datum_updated = models.DateTimeField(default=timezone.now, blank =False) 
	
	def __str__(self): # For Python 2, use __unicode__ too 
		return self.naam

class Fanclub(models.Model):
	naam = models.CharField(max_length=50,blank = False,unique=True)
	aantal_leden = models.DecimalField(max_digits=6,decimal_places = 0,default = 1) 
	contact = models.ForeignKey(Contact,on_delete=models.CASCADE)
	datum_inserted = models.DateTimeField(default=timezone.now,blank=False)
	datum_updated = models.DateTimeField(default=timezone.now,blank=False)
	

	def __str__(self): # For Python 2, use __unicode__ too 
		return self.naam

class Zaal(models.Model):
	naam = models.CharField(max_length=50,blank = False,unique=True)
	postcode = models.CharField(max_length=6,blank = False)
	adress = models.CharField(max_length=50,blank = False)
	plaats = models.CharField(max_length=50,blank = False)
	telefoon = models.DecimalField(max_digits=11,decimal_places = 0,default = 0)
	contact = models.ForeignKey(Contact,on_delete=models.CASCADE)
	datum_inserted = models.DateTimeField(default=timezone.now, blank=False) 
	datum_updated = models.DateTimeField(default=timezone.now, blank=False) 

	def __str__(self): # For Python 2, use __unicode__ too 
		return self.naam

class Band(models.Model):
	naam = models.CharField(max_length=50,blank = False,unique=True)
	contact = models.ForeignKey(Contact,on_delete=models.CASCADE)
	soort = models.CharField(max_length=50,blank=True)
	aantal_leden = models.DecimalField(max_digits=6,decimal_places = 0,default = 1) 
	rekening_nr = models.CharField(max_length=18,blank=True,default='NL')
	memo = models.TextField(blank = True)
	image = models.ImageField(upload_to ='media',null=True,blank=True)
	datum_inserted = models.DateTimeField(default=timezone.now, blank=False) 
	datum_updated = models.DateTimeField(default=timezone.now, blank=False) 

	def __str__(self): # For Python 2, use __unicode__ too 
		return self.naam

class Cateraar(models.Model):
	naam = models.CharField(max_length=50,blank = False,unique=True)
	contact = models.ForeignKey(Contact,on_delete=models.CASCADE)
	soort = models.CharField(max_length=50,blank=True)
	rekening_nr = models.CharField(max_length=18,blank=True,default='NL')
	memo = models.TextField(blank = True)
	datum_inserted = models.DateTimeField(default=timezone.now, blank=False) 
	datum_updated = models.DateTimeField(default=timezone.now, blank=False) 

	def __str__(self): # For Python 2, use __unicode__ too 
		return self.naam

class Evenement(models.Model):

	class Betalingen(models.IntegerChoices):
		bank = 0
		cash = 1

	class Instrumenten(models.IntegerChoices):
		eigen = 0
		huur = 1

	naam = models.CharField(max_length=50,blank = False,unique=True)
	datum = models.DateTimeField(default=timezone.now, blank=False) 
	aanvang = models.TimeField(auto_now=False)
	einde = models.TimeField(auto_now=False)
	zaal_open = models.TimeField(auto_now=False)
	locatie = models.ForeignKey(Zaal,on_delete=models.CASCADE)
	#catering = models.ForeignKey(Cateraar,on_delete=models.CASCADE)
	#catering_prijs = models.DecimalField(max_digits=8,decimal_places = 2,default = 0,blank=False)
	band = models.ForeignKey(Band,on_delete=models.CASCADE)
	gage = models.DecimalField(max_digits=4,decimal_places = 0,default = 0)
	betaling =  models.IntegerField(choices=Betalingen.choices,default=0)
	soort_overeenkomst = models.CharField(max_length=50,blank=True)
	thema = models.CharField(max_length=50,blank=False)
	entree_prijs = models.DecimalField(max_digits=6,decimal_places = 2,default = 0,blank=False)
	voorverkoop_prijs = models.DecimalField(max_digits=6,decimal_places = 2,default = 0,blank=False)
	beheerder = models.ForeignKey(Contact,on_delete=models.CASCADE)
	zitplaatsen = models.DecimalField(max_digits=8,decimal_places = 0,default = 0)
	vergunning_vereist = models.BooleanField(blank=False)
	vergunning_aaangevraagd = models.BooleanField(blank=False)
	vergunning_datum = models.DateField(blank=True)
	volt440 =  models.BooleanField(blank=False)
	hulp_nodig = models.BooleanField(blank=False)
	huur = models.IntegerField(choices=Instrumenten.choices,default=0)
	technicus =  models.BooleanField(blank=False)
	aantal_autos = models.DecimalField(max_digits=2,decimal_places = 0,default = 0)
	memo = models.TextField(blank = True)
	datum_inserted = models.DateTimeField(default=timezone.now, blank=False) 
	datum_updated = models.DateTimeField(default=timezone.now, blank=False) 

	def __str__(self): # For Python 2, use __unicode__ too 
		return self.naam
