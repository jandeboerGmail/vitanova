
import os
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'vitanova.settings')

import pyexcel as p

import django
django.setup()

from contacts.models import Contact

i = 0
records = p.iget_records(file_name='my_file.xls')
for record in records:
    print("%d | %s |  %s |  %s |  %s |  %s | %s |  %s |  %s " %
    (i, record['naam'],record['E-mail'],
    record['Telefoon'],record['Postcode'],record['Plaats'],
    record['L/B/S/G'],record['kennis'],record['Bedrag']))
    i= i + 1
    if Contact.objects.filter(naam = record['naam']):
        print("There is at least one Entry with this name")
    else:
        c = Contact.objects.create(naam = record['naam'])
        #contact.naam = record['naam']
        c.emailadress = record['E-mail']
        c.telefoon = record['Telefoon']
        c.postcode = str.upper(record['Postcode'])
        c.plaats = record['Plaats']
        c.soort_lid = 0
        c.memo = record['kennis']
        c.save()
