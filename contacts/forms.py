from django import forms
from .models import Contact, Band, Fanclub, Zaal, Cateraar, Evenement 

#Contact
class ContactForm(forms.ModelForm):
    class Meta:
        model = Contact

        fields = ['naam','voornaam','adres','postcode','plaats','telefoon','mobiel','emailadress',
        'soort','soort_lid','rekening_nr','status','image','memo'] 
        
        widgets = {
            'naam': forms.TextInput(attrs={'class': 'form-control'}),
            'voornaam': forms.TextInput(attrs={'class': 'form-control'}),
            'adres': forms.TextInput(attrs={'class': 'form-control'}),
            'postcode': forms.TextInput(attrs={'class': 'form-control'}),  
            'plaats': forms.TextInput(attrs={'class': 'form-control'}), 
            'telefoon': forms.TextInput(attrs={'class': 'form-control'}), 
            'mobiel': forms.TextInput(attrs={'class': 'form-control'}), 
            'emailadress': forms.EmailInput(attrs={'class': 'form-control'}), 
            'soort': forms.Select(attrs={'class': 'form-control'}), 
            'soort_lid': forms.Select(attrs={'class': 'form-control'}),
            'rekening_nr': forms.TextInput(attrs={'class': 'form-control'}), 
            'status': forms.Select(attrs={'class': 'form-control'}), 
            'memo': forms.Textarea(attrs={'class': 'form-control'}), 
            'image': forms.FileInput(attrs={'class': 'form-control'}),  
        }

class BandForm(forms.ModelForm):
    class Meta:
        model = Band

        fields = ['naam','contact','aantal_leden','genre','instrumenten','technicus','aantal_autos',
        'soort','bedrag','rekening_nr','website','memo','image']

        widgets = {
            'naam': forms.TextInput(attrs={'class': 'form-control'}),
            'contact': forms.Select(attrs={'class': 'form-control'}),
            'aantal_leden': forms.NumberInput(attrs={'class': 'form-control'}),  
            'genre': forms.TextInput(attrs={'class': 'form-control'}), 
            'instrumenten': forms.NumberInput(attrs={'class': 'form-control'}), 
            'techicus': forms.CheckboxInput(attrs={'class': 'form-control'}), 
            'aantal_autos': forms.NumberInput(attrs={'class': 'form-control'}), 
            'soort': forms.Select(attrs={'class': 'form-control'}),
            'bedrag': forms.NumberInput(attrs={'class': 'form-control'}), 
            'rekening_nr': forms.TextInput(attrs={'class': 'form-control'}), 
            'website': forms.URLInput(attrs={'class': 'form-control'}), 
            'memo': forms.Textarea(attrs={'class': 'form-control'}),
            'image': forms.FileInput(attrs={'class': 'form-control'}), 
            
        }
        

class FanclubForm(forms.ModelForm):
    class Meta:
        model = Fanclub

        fields = ['naam','contact','website','aantal_leden','memo']

        widgets = {
            'naam': forms.TextInput(attrs={'class': 'form-control'}),
            'contact': forms.Select(attrs={'class': 'form-control'}),
            'website': forms.URLInput(attrs={'class': 'form-control'}),
            'aantal_leden': forms.NumberInput(attrs={'class': 'form-control'}),
            'memo': forms.Textarea(attrs={'class': 'form-control'}),

        }


class ZaalForm(forms.ModelForm):
    class Meta:
        model = Zaal

        fields = ['naam','contact','postcode','adress','plaats','telefoon','website','volt440',
        'hulp_nodig','vergunning_vereist','vergunning_aangevraagd','vergunning_datum']

        widgets = {
            'naam': forms.TextInput(attrs={'class': 'form-control'}),
            'contact': forms.Select(attrs={'class': 'form-control'}),
            'postcode': forms.TextInput(attrs={'class': 'form-control'}),
            'adress': forms.TextInput(attrs={'class': 'form-control'}),
            'plaats': forms.TextInput(attrs={'class': 'form-control'}),
            'telefoon': forms.TextInput(attrs={'class': 'form-control'}),
            'website': forms.URLInput(attrs={'class': 'form-control'}),
            'volt440': forms.CheckboxInput(attrs={'class': 'form-control'}),
            'hulp_nodig': forms.CheckboxInput(attrs={'class': 'form-control'}),
            'vergunning_vereist': forms.CheckboxInput(attrs={'class': 'form-control'}),
            'vergunning_aangevraagd': forms.DateInput(attrs={'class': 'form-control'}),
            'vergunning_datum': forms.DateInput(attrs={'class': 'form-control'}),

        }

class CateraarForm(forms.ModelForm):
    class Meta:
        model = Cateraar

        fields = ['naam','contact','soort','catering_prijs','rekening_nr','website','memo']

        widgets = {
            'naam': forms.TextInput(attrs={'class': 'form-control'}),
            'contact': forms.Select(attrs={'class': 'form-control'}),
            'soort': forms.TextInput(attrs={'class': 'form-control'}),
            'catering_prijs': forms.NumberInput(attrs={'class': 'form-control'}),
            'rekening_nr': forms.TextInput(attrs={'class': 'form-control'}),
            'website': forms.URLInput(attrs={'class': 'form-control'}),
            'memo': forms.Textarea(attrs={'class': 'form-control'}),

        }

class EvenementForm(forms.ModelForm):
    class Meta:
        model = Evenement

        fields = ['naam','datum','aanvang','einde','zaal_open','beheerder','locatie','catering','band','thema',
        'entree_prijs','voorverkoop_prijs','opbrengst','zitplaatsen','website','organisator','organisator_info','catering_info','activiteiten_info','volgende_activiteiten','memo']

        widgets = {
            'naam': forms.TextInput(attrs={'class': 'form-control'}),
            'datum': forms.DateInput(attrs={'class': 'form-control'}),
            'aanvang': forms.TimeInput(attrs={'class': 'form-control'}),
            'einde': forms.TimeInput(attrs={'class': 'form-control'}),
            'zaal_open': forms.TimeInput(attrs={'class': 'form-control'}),
            'beheerder': forms.Select(attrs={'class': 'form-control'}),
            'locatie': forms.Select(attrs={'class': 'form-control'}),
            'catering': forms.Select(attrs={'class': 'form-control'}),
            'band': forms.Select(attrs={'class': 'form-control'}),
            'thema': forms.TextInput(attrs={'class': 'form-control'}),
            'entree_prijs': forms.NumberInput(attrs={'class': 'form-control'}),
            'voorverkoop_prijs': forms.NumberInput(attrs={'class': 'form-control'}),
            'opbrengst': forms.NumberInput(attrs={'class': 'form-control'}),
            'zitplaatsen': forms.NumberInput(attrs={'class': 'form-control'}),
            'website': forms.URLInput(attrs={'class': 'form-control'}),
            'organisator': forms.TextInput(attrs={'class': 'form-control'}),
            'organisator_info': forms.TextInput(attrs={'class': 'form-control'}),
            'catering_info': forms.TextInput(attrs={'class': 'form-control'}),
            'activiteiten_info': forms.TextInput(attrs={'class': 'form-control'}),
            'volgende_activiteiten': forms.Textarea(attrs={'class': 'form-control'}),
            'memo': forms.Textarea(attrs={'class': 'form-control'}),

        }   