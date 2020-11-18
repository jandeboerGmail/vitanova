from django import forms
from .models import Contact, Band

class ContactPostModelForm(forms.ModelForm):
    class Meta:
        model = Contact
        fields = ['naam','voornaam','adres','postcode','plaats','telefoon','mobiel','emailadress',
        'soort','soort_lid','rekening_nr','status','image','memo'] 

class BandPostModelForm(forms.ModelForm):
    class Meta:
        model = Band
        fields = ['naam','contact','soort','aantal_leden','genre','instrumenten','technicus','aantal_autos',
        'bedrag','rekening_nr','website','memo','image'] 