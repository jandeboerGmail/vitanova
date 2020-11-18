import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'vitanova.settings')
from contacts.models import Contact

django.setup()
'''
records = Contact.objects.order_by('naam')
i = 0

for record in records:
    print("%d | %s |  %s |  %s |  %s |  %s | %s |  %s |  %s " %
    (i, record['naam'],record['E-mail'],
    record['Telefoon'],record['Postcode'],record['Plaats'],
    record['L/B/S/G'],record['kennis'],record['Bedrag']))
    i = i + 1
'''         