from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.http import HttpResponse, Http404
from django import forms
# from django.views.generic import ListView, DetailView, CreateView, UpdateView
from django.shortcuts import get_object_or_404
from contacts.models import Contact, Category, Band, Fanclub, Zaal, Cateraar, Evenement, Ticket
from contacts.forms import ContactForm, BandForm, FanclubForm, ZaalForm, CateraarForm, EvenementForm, TicketForm, AddTicketForm
from contacts.poster import Poster
from django.db.models import Q
import datetime

import xlwt
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas

# Create your views here.
def current_datetime(request):
    now = datetime.datetime.now()
    html = "<html><body>It is now %s.</body></html>" % now
    return HttpResponse(html)

def about(request):
    context  = {}
    return render(request,'about.html',context )

def todo(request):
    context  = {}
    return render(request,'todo.html',context )

#def index(request):
#	return HttpResponse("Hello world. You're at the contacts index.")
# Contact

@login_required
def index(request):
    contact_list = Contact.objects.order_by('naam')
    contact_dict  = {'contacts' : contact_list}
    return render(request,'index.html',contact_dict )

@login_required
def indexContact(request):
    return render(request,'indexContact.html', {} )

@login_required
def indexBand(request):
    return render(request,'indexBand.html', {} )

@login_required
def indexFanclub(request):
    return render(request,'indexFanclub.html', {} )

@login_required
def indexZaal(request):
    return render(request,'indexZaal.html', {} )

@login_required
def indexCateraar(request):
    return render(request,'indexCateraar.html', {} )

@login_required
def indexEvenement(request):
    return render(request,'indexEvenement.html', {} )

@login_required
def indexAkties(request):
    return render(request,'indexAkties.html', {} )

# Contact
@login_required
def allContact(request):
    contact_list = Contact.objects.order_by('naam')
    aantal =  contact_list.count
    contact_dict  = {'contacts' : contact_list , 'aantal' : aantal}
    return render(request,'displayContact.html',contact_dict )

# Zoek Contact
@login_required
def sNaamContact (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        contact_list = Contact.objects.filter(qset).distinct().order_by('naam','plaats')
        aantal = contact_list.count
        contact_dict  = {'results' : contact_list , 'aantal' : aantal, "query": query}
    else:
        contact_dict = {}
    return render(request,"sNaamContact.html", contact_dict ) 

@login_required    
def sVoorNaamContact (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(voornaam__icontains=query)         
        )       
        contact_list = Contact.objects.filter(qset).distinct().order_by('voornaam','naam')
        aantal = contact_list.count
        contact_dict  = {'results' : contact_list , 'aantal' : aantal, "query": query}
    else:
        contact_dict = {}
    return render(request,"sVoorNaamContact.html", contact_dict)

@login_required
def sPostcodeContact(request):
    query = request.GET.get('q','')
    if query:
        if query == "all":
            contact_list = Contact.objects.distinct().order_by('naam','postcode')
            aantal = contact_list.count
        else:  
            qset = (
                Q(postcode__icontains=query)         
            )       
            contact_list = Contact.objects.filter(qset).distinct().order_by('naam','postcode')
            aantal = contact_list.count
        contact_dict  = {'results' : contact_list , 'aantal' : aantal, "query": query}
    else:
        contact_dict = {}
    return render(request,"sPostcodeContact.html",contact_dict)

@login_required
def sPlaatsContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(plaats__icontains=query)         
        )       
        contact_list = Contact.objects.filter(qset).distinct().order_by('naam','plaats')
        aantal = contact_list.count
        contact_dict  = {'results' : contact_list , 'aantal' : aantal, "query": query}
    else:
        contact_dict = {}
    return render(request,"sPlaatsContact.html", contact_dict)
 
@login_required
def sTelefoonContact (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(telefoon__icontains=query)         
        )       
        contact_list = Contact.objects.filter(qset).distinct().order_by('naam','telefoon')
        aantal = contact_list.count
        contact_dict  = {'results' : contact_list , 'aantal' : aantal, "query": query}
    else:
         contact_dict = {}
    return render(request,"sTelefoonContact.html", contact_dict)

@login_required
def sMobielContact (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(mobiel__icontains=query)         
        )       
        contact_list = Contact.objects.filter(qset).distinct().order_by('naam','telefoon')
        aantal = contact_list.count
        contact_dict  = {'results' : contact_list , 'aantal' : aantal, "query": query}
    else:
        contact_dict = {}
    return render(request,"sTelefoonContact.html",  contact_dict)

@login_required
def sSoortContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            #  Q(soort__icontains=query)
            Q(soort__exact=query)         
        )       
        contact_list = Contact.objects.filter(qset).distinct().order_by('naam','plaats')
        aantal = contact_list.count
        contact_dict  = {'results' : contact_list , 'aantal' : aantal, "query": query}
    else:
        contact_dict = {}
    return render(request,"sSoortContact.html", contact_dict)

@login_required
def sStatusContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            # Q(status__icontains=query)  
            Q(status__exact=query)         
        )       
        contact_list = Contact.objects.filter(qset).distinct().order_by('naam','plaats')
        aantal = contact_list.count
        contact_dict  = {'results' : contact_list , 'aantal' : aantal, "query": query}
    else:
        contact_dict = {}
    return render(request,"sStatusContact.html", contact_dict)
  
@login_required
def sSoortLidContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            #Q(soort_lid__icontains=query)
            Q(soort_lid__exact=query)         
        )       
        contact_list = Contact.objects.filter(qset).distinct().order_by('naam')
        aantal = contact_list.count
        contact_dict  = {'results' : contact_list , 'aantal' : aantal, "query": query}
    else:
        contact_dict = {}
    return render(request,"sSoortLidContact.html",  contact_dict)
    
#CRUD contact

'''
def contact_post_detail_view(request):
    # 1 object -> detail view
    obj = get_object_or_404(Contact)
    template_name = 'detail.html'
    context = {"object": obj}
    return render(request, template_name, context)
'''

@login_required
def createContact(request):
    form = ContactForm(request.POST or None)
    if form.is_valid():
        form.save() 
        form = ContactForm()
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Contact'}
    return render(request,template_name,context)

@login_required
def editContact(request,pk):      
        try :
            contact = Contact.objects.get(id=pk)
        except Contact.DoesNotExist:
            return redirect('indexContact')

        form = ContactForm(request.POST or None,instance = contact)
        # print('Request Method:',request.method)
        if request.method == 'POST':
            if form.is_valid():
                form.save()
                return ( redirect('indexContact')) 
        
        template_name = 'inputForm.html'
        context = {'form' : form, 'title': 'Contact'}
        return render(request,template_name,context)
        

@login_required
def deleteContact(request,pk):      
        try :
            contact = Contact.objects.get(id=pk)
        except Contact.DoesNotExist:
            return redirect('/vitanova/indexContact')

        if request.method == 'POST':
            #print('Deleting Post:',request.POST)
            contact.delete()
            return ( redirect('indexContact')) 

        template_name = 'deleteRecord.html'
        context = {'item' : contact , 'title': 'Contact'}
        return render(request,template_name,context) 


# Export
def exportContact(request):  
        response = HttpResponse(content_type='application/ms-excel') 
        now = datetime.datetime.now()
        response['Content-Disposition']  = 'attachment; filename=Contacts_' + \
            now.strftime ("%Y%m%d_%H%M%S") +'.xls'

        wb = xlwt.Workbook(encoding='utf-8')
        ws = wb.add_sheet('Contacts')
        row_num = 0
        font_style = xlwt.XFStyle()
        font_style.font.bold = True

        columns = ['naam','voornaam','adres','postcode','plaats','telefoon','mobiel','emailadress',
        'soort','soort_lid','rekening_nr','status','contact_image','memo']

        for col_num in range(len(columns)):
            ws.write(row_num, col_num, columns[col_num], font_style)

        font_style = xlwt.XFStyle()

        rows = Contact.objects.order_by('naam').values_list('naam','voornaam','adres','postcode','plaats','telefoon','mobiel','emailadress',
        'soort','soort_lid','rekening_nr','contact_image','status','memo')
        for row in rows:
            row_num +=1

            for col_num in range(len(columns)):
                ws.write(row_num, col_num, str(row[col_num]), font_style)

        wb.save(response)

        return response

#
# band
#
@login_required
def allBand(request):
    band_list = Band.objects.order_by('naam')
    band_list.contact = Contact.objects
    aantal = band_list.count
    band_dict  = {'bands' : band_list,'aantal' : aantal}
    return render(request,'displayBand.html',band_dict )
1
@login_required
def sNaamBand (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        band_list = Band.objects.filter(qset).distinct().order_by('naam')
        band_list.contact = Contact.objects
        aantal = band_list.count
        band_dict = { "results": band_list, 'aantal' : aantal, "query": query}
    else:
        band_dict = {}
    return render(request,"sNaamBand.html",band_dict)

@login_required   
def sGenreBand (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(genre__icontains=query)         
        )       
        band_list = Band.objects.filter(qset).distinct().order_by('naam','genre')
        aantal = band_list.count
        band_dict = { "results": band_list, 'aantal' : aantal, "query": query}
    else:
        band_dict = {}
    return render(request,"sGenreBand.html",band_dict)

@login_required
def sAantalLedenBand (request):
    qfrom = request.GET.get('qf','')
    qtill = request.GET.get('qt','')
  
    if qfrom:
        qset = (
            Q(aantal_leden__gte=qfrom,aantal_leden__lte=qtill)         
        )       
        band_list = Band.objects.filter(qset).distinct().order_by('-aantal_leden','naam',)
        aantal = band_list.count
        band_dict = { "results": band_list, 'aantal' : aantal,  "qfrom": qfrom, "qtill": qtill }
    else:
        band_dict = {}
    return render(request,"sAantalLedenBand.html",band_dict)

@login_required
def sBedragBand (request):
    qfrom = request.GET.get('qf','')
    qtill = request.GET.get('qt','')
    
    if qfrom:
        qset = (
            Q(bedrag__gte=qfrom,bedrag__lte=qtill)          
        )       
        band_list = Band.objects.filter(qset).distinct().order_by('-bedrag','naam')
        aantal = band_list.count
        band_dict = { "results": band_list, 'aantal' : aantal,  "qfrom": qfrom, "qtill": qtill }
    else:
        band_dict = {}
    return render(request,"sBedragBand.html",band_dict)

#CRUD
@login_required
def createBand(request):
    form = BandForm(request.POST or None)
    if form.is_valid():
        form.save()
        form = BandForm()

    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Band'}
    return render(request,template_name,context) 

@login_required
def editBand(request,pk):
    try :
        band = Band.objects.get(id=pk)
    except Band.DoesNotExist:
         return redirect('index')

    form = BandForm(instance = band)
 
    if request.method == 'POST':
        form = BandForm(request.POST,request.FILES,instance = band)
        if form.is_valid():
            form.save()

        return ( redirect('indexBand')) 

    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Band'}
    return render(request,template_name,context)

@login_required
def deleteBand(request,pk):      
        try :
            band = Band.objects.get(id=pk)
        except Band.DoesNotExist:
            return redirect('/vitanova/indexBand')

        if request.method == 'POST':
            print('Printing Post:',request.POST)
            band.delete()
            return ( redirect('indexBand')) 

        template_name = 'deleteRecord.html'
        context = {'item' : band , 'title': 'Band'}
        return render(request,template_name,context)

# Export
def exportBand(request):  
        response = HttpResponse(content_type='application/ms-excel') 
        now = datetime.datetime.now()
        response['Content-Disposition']  = 'attachment; filename=Bands_' + \
            now.strftime ("%Y%m%d_%H%M%S") +'.xls'

        wb = xlwt.Workbook(encoding='utf-8')
        ws = wb.add_sheet('Bands')
        row_num = 0
        font_style = xlwt.XFStyle()
        font_style.font.bold = True

        columns = ['naam','contact','aantal_leden','genre','instrumenten','technicus','aantal_autos',
        'soort','bedrag','rekening_nr','website','image','memo']

        for col_num in range(len(columns)):
            ws.write(row_num, col_num, columns[col_num], font_style)

        font_style = xlwt.XFStyle()
         #'soort_lid', models.IntegerField(choices=[(0, 'Blanco'), (1, 'Brons'), (2, 'Zilver'), (3, 'Goud')], default=0)),
        rows = Band.objects.order_by('naam').values_list('naam','contact','aantal_leden','genre','instrumenten','technicus','aantal_autos',
        'soort','bedrag','rekening_nr','website','band_image','memo')
        for row in rows:
            row_num +=1

            for col_num in range(len(columns)):
                ws.write(row_num, col_num, str(row[col_num]), font_style)

        wb.save(response)

        return response
#    
# Fanclub
#
@login_required
def allFanclub (request):
    fanclub_list = Fanclub.objects.order_by('naam')
    aantal =  fanclub_list.count
    content  = {'fanclubs' : fanclub_list,'aantal' : aantal}
    return render(request,'displayFanclub.html',content )

# Zoek
@login_required
def sNaamFanclub (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results =Fanclub.objects.filter(qset).distinct().order_by('naam')
        aantal =  results.count
        fanclub_dict  = {'results' : results , 'aantal' : aantal, "query": query}
    else:
         fanclub_dict = {}
    return render(request,"sNaamFanclub.html", fanclub_dict)

#CRUD
@login_required
def createFanclub(request):
    form = FanclubForm(request.POST or None)
    if form.is_valid():
        form.save()
        form = FanclubForm()
       
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Fanclub'}
    return render(request,template_name,context)

@login_required
def editFanclub(request,pk):
    try :
        fanclub = Fanclub.objects.get(id=pk)
    except Fanclub.DoesNotExist:
         return redirect('index')

    form = FanclubForm(request.POST or None,instance = fanclub)
    if form.is_valid():
        form.save()
        return ( redirect('indexFanclub'))
    
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Fanclub'}
    return render(request,template_name,context)

@login_required
def deleteFanclub(request,pk):      
        try :
            fanclub = Fanclub.objects.get(id=pk)
        except Fanclub.DoesNotExist:
            return redirect('/indexFanclub')

        if request.method == 'POST':
            #print('Printing Post:',request.POST)
            fanclub.delete()
            return ( redirect('indexFanclub')) 

        template_name = 'deleteRecord.html'
        context = {'item' : fanclub , 'title': 'Fanclubs'}
        return render(request,template_name,context)

# Export
def exportFanclub(request):  
        response = HttpResponse(content_type='application/ms-excel') 
        now = datetime.datetime.now()
        response['Content-Disposition']  = 'attachment; filename=Fanclubs_' + \
            now.strftime ("%Y%m%d_%H%M%S") +'.xls'

        wb = xlwt.Workbook(encoding='utf-8')
        ws = wb.add_sheet('Fanclubs')
        row_num = 0
        font_style = xlwt.XFStyle()
        font_style.font.bold = True

        columns = ['naam','contact','aantal_leden','website','memo']

        for col_num in range(len(columns)):
            ws.write(row_num, col_num, columns[col_num], font_style)

        font_style = xlwt.XFStyle()

        rows = Fanclub.objects.order_by('naam').values_list('naam','contact','aantal_leden','website','memo')
        for row in rows:
            row_num +=1

            for col_num in range(len(columns)):
                ws.write(row_num, col_num, str(row[col_num]), font_style)

        wb.save(response)

        return response
#
# zaal
#
@login_required
def allZaal (request):
    zaal_list = Zaal.objects.order_by('naam')
    aantal = zaal_list.count
    zaal_dict  = {'zalen' : zaal_list, 'aantal' : aantal}
    return render(request,'displayZaal.html',zaal_dict)

@login_required
def sNaamZaal (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        zaal_list = Zaal.objects.filter(qset).distinct().order_by('naam')
        aantal = zaal_list.count
        zaal_dict =  {'results' : zaal_list, 'aantal' : aantal, "query": query}
    else:
          zaal_dict = {}
    return render(request,"sNaamZaal.html",zaal_dict)

#CRUD
@login_required
def createZaal(request):
    form = ZaalForm(request.POST or None)
    if form.is_valid():
        form.save()
        form = ZaalForm
        
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Zaal'}
    return render(request,template_name,context)

@login_required
def editZaal(request,pk):
    try :
        zaal = Zaal.objects.get(id=pk)
    except Zaal.DoesNotExist:
         return redirect('index')

    form = ZaalForm(request.POST or None,instance = zaal)
    if form.is_valid():
        form.save()
        return ( redirect('indexZaal')) 

    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Zaal'}
    return render(request,template_name,context)

@login_required
def deleteZaal(request,pk):      
        try :
            zaal = Zaal.objects.get(id=pk)
        except Zaal.DoesNotExist:
            return redirect('/vitanova/indexZaal')

        if request.method == 'POST':
            #print('Printing Post:',request.POST)
            zaal.delete()
            return ( redirect('indexZaal')) 

        template_name = 'deleteRecord.html'
        context = {'item' : zaal , 'title': 'Zaal'}
        return render(request,template_name,context)

# Export
def exportZaal(request):  
        response = HttpResponse(content_type='application/ms-excel') 
        now = datetime.datetime.now()
        response['Content-Disposition']  = 'attachment; filename=Zalen_' + \
            now.strftime ("%Y%m%d_%H%M%S") +'.xls'

        wb = xlwt.Workbook(encoding='utf-8')
        ws = wb.add_sheet('Zalen')
        row_num = 0
        font_style = xlwt.XFStyle()
        font_style.font.bold = True

        columns = ['naam','contact','postcode','adress','postcode','plaats','telefoon','website', \
                   'volt440','hulp_nodig','vergunning_vereist','vergunning_aangevraagd','vergunning_datum']

        for col_num in range(len(columns)):
            ws.write(row_num, col_num, columns[col_num], font_style)

        font_style = xlwt.XFStyle()

        rows = Zaal.objects.order_by('naam').values_list('naam','contact','postcode','adress','postcode','plaats','telefoon','website', \
                   'volt440','hulp_nodig','vergunning_vereist','vergunning_aangevraagd','vergunning_datum')
        for row in rows:
            row_num +=1

            for col_num in range(len(columns)):
                ws.write(row_num, col_num, str(row[col_num]), font_style)

        wb.save(response)

        return response
#
# Cateraar
#
@login_required
def allCateraar (request):
    cateraar_list = Cateraar.objects.order_by('naam')
    aantal = cateraar_list.count
    cateraar_dict  = {'cateraars' : cateraar_list, 'aantal' : aantal}
    return render(request,'displayCateraar.html',cateraar_dict )

@login_required
def sNaamCateraar (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        cateraar_list = Cateraar.objects.filter(qset).distinct().order_by('naam')
        aantal = cateraar_list.count
        cateraar_dict = { "results": cateraar_list,'aantal' : aantal, "query": query}
    else:
        cateraar_dict = {}
    return render(request, "sNaamCateraar.html", cateraar_dict)

#CRUD
@login_required    
def createCateraar(request):
    form = CateraarForm(request.POST or None)
    if form.is_valid():
        form.save()
        form = CateraarForm

    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Cateraar'}
    return render(request,template_name,context)

@login_required
def editCateraar(request,pk):
    try :
        cateraar = Cateraar.objects.get(id=pk)
    except Cateraar.DoesNotExist:
         return redirect('index')

    form = CateraarForm(request.POST or None,instance = cateraar)
    if form.is_valid():
        form.save()
        return ( redirect('indexCateraar')) 

    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Cateraar'}
    return render(request,template_name,context)

@login_required
def deleteCateraar(request,pk):      
        try :
            cateraar = Cateraar.objects.get(id=pk)
        except Cateraar.DoesNotExist:
            return redirect('indexCateraar')

        if request.method == 'POST':
            #print('Printing Post:',request.POST)
            cateraar.delete()
            return ( redirect('indexCateraar')) 

        template_name = 'deleteRecord.html'
        context = {'item' : cateraar , 'title': 'Cateraar'}
        return render(request,template_name,context)

# Export
def exportCateraar(request):  
        response = HttpResponse(content_type='application/ms-excel') 
        now = datetime.datetime.now()
        response['Content-Disposition']  = 'attachment; filename=Cateraar_' + \
            now.strftime ("%Y%m%d_%H%M%S") +'.xls'
    
        wb = xlwt.Workbook(encoding='utf-8')
        ws = wb.add_sheet('Cateraar')
        row_num = 0
        font_style = xlwt.XFStyle()
        font_style.font.bold = True

        columns = ['naam','contact','soort','catering_prijs','rekening_nr','website','memo']

        for col_num in range(len(columns)):
            ws.write(row_num, col_num, columns[col_num], font_style)

        font_style = xlwt.XFStyle()

        rows = Cateraar.objects.order_by('naam').values_list('naam','contact','soort','catering_prijs','rekening_nr','website','memo')
        for row in rows:
            row_num +=1

            for col_num in range(len(columns)):
                ws.write(row_num, col_num, str(row[col_num]), font_style)

        wb.save(response)
        
        return response
#
# Evenement
#
@login_required
def allEvenement (request):
    evenement_list = Evenement.objects.order_by('naam','datum')
    aantal = evenement_list.count
    content  = {'evenementen' : evenement_list, 'aantal' : aantal}
    
    return render(request,'displayEvenement.html',content )

#zoek
@login_required
def sNaamEvenement (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        evenement_list = Evenement.objects.filter(qset).distinct().order_by('naam')
        aantal = evenement_list.count
        evenement_dict =  {"results" : evenement_list, 'aantal' : aantal, "query": query}
    else:
        evenement_dict = {}
    return render(request,"sNaamEvenement.html",  evenement_dict)

@login_required
def sEntreePrijsEvenement (request):
    qfrom = request.GET.get('qf','')
    qtill = request.GET.get('qt','')

    query = qfrom
    if query:
        qset = (
            Q(entree_prijs__gte=qfrom,entree_prijs__lte=qtill)          
        )       
        evenement_list = Evenement.objects.filter(qset).distinct().order_by('naam')
        aantal = evenement_list.count
        evenement_dict = {"results": evenement_list, "aantal" : aantal , "qfrom": qfrom, "qtill": qtill}
    else:
        evenement_dict = {}
    return render(request,"sEntreePrijsEvenement.html", evenement_dict)
  

@login_required
def sLocatieEvenement (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(locatie__icontains=query)         
        )       
        evenement_list = Evenement.objects.filter(qset).distinct().order_by('naam')
        aantal = evenement_list.count
        evenement_dict = {  "results": evenement_list, "aantal" : aantal , "query": query}
    else:
        evenement_dict = {}
    return render(request,"sNaamEvenement.html", evenement_dict)
      
'''
@login_required
def sVergunningEvenement (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(locatie__lte=query)         
        )       
        results = Evenement.objects.filter(qset).distinct().order_by('naam')
    else:
        results = []
    return render(request,"sNaamEvenement.html", {
        "results": results,
        "query": query
    })
'''

#CRUD
@login_required
def createEvenement(request):
    form = EvenementForm(request.POST or None)
    if form.is_valid():
        form.save()
        form = EvenementForm
    
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Evenement'}
    return render(request,template_name,context)

@login_required
def editEvenement(request,pk):
    try :
        evenement = Evenement.objects.get(id=pk)
    except Evenement.DoesNotExist:
         return redirect('index')

    form = EvenementForm(request.POST or None,instance = evenement)
    if form.is_valid():
        form.save()
        return ( redirect('indexEvenement')) 

    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Evenement'}
    return render(request,template_name,context)

@login_required
def deleteEvenement(request,pk):      
        try :
            evenement = Evenement.objects.get(id=pk)
        except Evenement.DoesNotExist:
            return redirect('indexEvenement')

        if request.method == 'POST':
            #print('Printing Post:',request.POST)
            evenement.delete()
            return ( redirect('indexEvenement')) 

        template_name = 'deleteRecord.html'
        context = {'item' : evenement , 'title': 'Evenement'}
        return render(request,template_name,context)

# Export
@login_required
def exportEvenement(request):  
        response = HttpResponse(content_type='application/ms-excel') 
        now = datetime.datetime.now()
        response['Content-Disposition']  = 'attachment; filename=Evenementen_' + \
            now.strftime ("%Y%m%d_%H%M%S") +'.xls'

        wb = xlwt.Workbook(encoding='utf-8')
        ws = wb.add_sheet('Evenement')
        row_num = 0
        font_style = xlwt.XFStyle()
        font_style.font.bold = True

        columns = ['naam','datum','aanvang','einde','zaal_open','beheerder','locatie','catering','band','thema','entree_prijs', \
                   'voorverkoop_prijs','zitplaatsen','website','organisator','organisator_info','catering_info', \
                   'activiteiten_info','volgende_datum_1','volgende_datum_2','uitverkocht','memo']

        for col_num in range(len(columns)):
            ws.write(row_num, col_num, columns[col_num], font_style)

        font_style = xlwt.XFStyle()

        rows = Evenement.objects.order_by('naam').values_list('naam','datum','aanvang','einde','zaal_open','beheerder','locatie','catering','band','thema','entree_prijs', \
                   'voorverkoop_prijs','zitplaatsen','website','organisator','organisator_info','catering_info', \
                   'activiteiten_info','volgende_datum_1','volgende_datum_2','uitverkocht','memo')
        for row in rows:
            row_num +=1

            for col_num in range(len(columns)):
                ws.write(row_num, col_num, str(row[col_num]), font_style)

        wb.save(response)
        
        return response

@login_required
def printEvenement(request,pk):
        response = HttpResponse(content_type='application/pdf') 
        now = datetime.datetime.now()
        response['Content-Disposition']  = 'attachment; filename=Poster_' + \
            now.strftime ("%Y%m%d_%H%M%S") +'.pdf'

        p = canvas.Canvas(response,pagesize=letter)
        p = Poster.pdf(pk,p)

        return response

@login_required
def ticketsEvenement(request,pk):
    try :
        evenement = Evenement.objects.get(id=pk)
    except Evenement.DoesNotExist:
        return redirect('indexEvenement')

    ticket_list = Ticket.objects.filter(evenement=evenement.id)
    aantal_contacts = ticket_list.count

    if ticket_list:
        opbrengst = 0
        aantal_tickets = 0

        for ticket in ticket_list:
            aantal_tickets = aantal_tickets + ticket.aantal

            if ticket.voorverkoop:
                opbrengst = opbrengst + evenement.voorverkoop_prijs
            else:
                opbrengst = opbrengst + evenement.entree_prijs

        result = { "evenement" : evenement, "result": ticket_list, 
                   "aantal_contacts": aantal_contacts, "aantal_tickets":  aantal_tickets,
                   "opbrengst":  opbrengst  }
    else:
        result = {}
    return render(request,"ticketsEvenement.html", result)
      

#
#
# Aktions
#

#Tickets
@login_required
def createTicket(request):
    form = TicketForm(request.POST or None)
    if form.is_valid():
        form.save() 
        form = TicketForm()
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Ticket'}
    return render(request,template_name,context)

'''
@login_required
def addTicket(request,pk):
    
    evenement = Evenement.objects.get(id=pk)

    form = AddTicketForm(request.POST or None)
    
    if form.is_valid():
        form.evenement = evenement.id
        form.save() 
        form = AddTicketForm()
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Ticket'}
    return render(request,template_name,context)
'''

@login_required
def addTicket(request,pk):
    
    try :
        evenement = Evenement.objects.get(id=pk)
    except Evenement.DoesNotExist:
        return redirect('indexEvenement')

    ticket = Ticket
    ticket.evenement = evenement.id

    return render(request,"addTicketEvenement.html", result)

@login_required
def editTicket(request,pk):
    try :
        ticket = Ticket.objects.get(id=pk)
    except Ticket.DoesNotExist:
         return redirect('index')

    form = TicketForm(request.POST or None,instance = ticket)
    if form.is_valid():
        form.save()
        return ( redirect('indexEvenement')) 

    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Ticket'}
    return render(request,template_name,context)

@login_required
def deleteTicket(request,pk):      
        try :
            ticket= Ticket.objects.get(id=pk)
        except Ticket.DoesNotExist:
            return redirect('indexEvenement')

        if request.method == 'POST':
            #print('Printing Post:',request.POST)
            ticket.delete()
            return ( redirect('indexEvenement')) 

        template_name = 'deleteRecord.html'
        context = {'item' : ticket , 'title': 'Ticket'}
        return render(request,template_name,context)
