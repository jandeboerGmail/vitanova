from django.db import models
from django.utils import timezone

class Contacts(models.Model):

	class Soorten(models.IntegerChoices):
		lid = 0
		erelid = 1
		artiest = 2
		catering = 3
		contact = 4

	voornaam = models.CharField(max_length=50,blank = True)
	achternaam = models.CharField(max_length=50,blank = True)
	emailadress = models.EmailField(max_length=254,blank = True)
	postcode = models.CharField(max_length=6,blank = True)
	adress = models.CharField(max_length=50,blank = True)
	plaats = models.CharField(max_length=50,blank = True)
	telefoon = models.DecimalField(max_digits=11,decimal_places = 10,default = 0)
	mobiel = models.DecimalField(max_digits=11,decimal_places = 10,default = 0)
	soort = models.IntegerField(choices=Soorten.choices,default=4)
	memo = models.TextField(blank = True)
	datum_inserted = models.DateTimeField(default=timezone.now) 
	datum_updated = models.DateTimeField(default=timezone.now) 
	
	def __str__(self): # For Python 2, use __unicode__ too 
		return self.voornaam

class Fanclubs(models.Model):
	naam = models.CharField(max_length=50,blank = True)
	aantal = models.CharField(max_length=50,blank = True)
	contact =  models.ForeignKey(Contacts,on_delete=models.CASCADE)
	datum_inserted = models.DateTimeField(default=timezone.now) 
	datum_updated = models.DateTimeField(default=timezone.now) 
	

	def __str__(self): # For Python 2, use __unicode__ too 
		return self.naam
