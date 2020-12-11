# Updates slug fields, Move up one directory(vitaniva) to run python3 update_slug.py
import os
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 
                      'vitanova.settings')

import django
django.setup()
from contacts.models import Contact, Band, Fanclub, Zaal, Cateraar, Evenement


def slug_contact_update():
    records = Contact.objects.order_by('naam')
    i = 0

    for record in records:
        print("Contact %d | " % (i))
        record.save()
        i = i + 1 

def slug_band_update():
    records = Band.objects.order_by('naam')
    i = 0

    for record in records:
        print("Band %d | " % (i))
        record.save()
        i = i + 1     

def slug_fanclub_update():
    records = Fanclub.objects.order_by('naam')
    i = 0

    for record in records:
        print("Fanclub %d | " % (i))
        record.save()
        i = i + 1 

def slug_zaal_update():
    records = Zaal.objects.order_by('naam')
    i = 0

    for record in records:
        print("Zaal %d | " % (i))
        record.save()
        i = i + 1 

def slug_cateraar_update():
    records = Cateraar.objects.order_by('naam')
    i = 0

    for record in records:
        print("Cateraar %d | " % (i))
        record.save()
        i = i + 1 

def slug_evenement_update():
    records = Evenement.objects.order_by('naam')
    i = 0

    for record in records:
        print("Evenement %d | " % (i))
        record.save()
        i = i + 1 
        
       
# Start execution here!
if __name__ == '__main__':
    print("Starting Slug Update ...") 
    slug_contact_update()
    slug_band_update()
    slug_fanclub_update()
    slug_zaal_update()
    slug_cateraar_update()
    slug_evenement_update()
