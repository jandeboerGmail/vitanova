from django import forms
from .models import Contact, Band, Fanclub, Zaal, Cateraar, Evenement 

#Contact
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

class FanclubPostModelForm(forms.ModelForm):
    class Meta:
        model = Fanclub
        fields = ['naam','website','aantal_leden','contact','memo']


class ZaalPostModelForm(forms.ModelForm):
    class Meta:
        model = Zaal
        fields = ['naam','contact','postcode','adress','plaats','telefoon','website','volt440',
        'hulp_nodig','vergunning_vereist','vergunning_aangevraagd','vergunning_datum']

class CateraarPostModelForm(forms.ModelForm):
    class Meta:
        model = Cateraar
        fields = ['naam','contact','website','soort','catering_prijs','rekening_nr','website','memo']

class EvenementPostModelForm(forms.ModelForm):
    class Meta:
        model = Evenement
        fields = ['naam','datum','aanvang','einde','zaal_open','beheerder','locatie','catering','band','thema',
        'entree_prijs','voorverkoop_prijs','opbrengst','zitplaatsen','website','memo']
   