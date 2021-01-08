from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.http import HttpResponse, Http404
from django import forms
# from django.views.generic import ListView, DetailView, CreateView, UpdateView
from django.shortcuts import get_object_or_404
from contacts.models import Contact, Category, Band, Fanclub, Zaal, Cateraar, Evenement
from contacts.forms import ContactForm, BandForm, FanclubForm, ZaalForm, CateraarForm, EvenementForm
from django.db.models import Q
import datetime

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

# Contact
@login_required
def allContact(request):
    contact_list = Contact.objects.order_by('naam')
    contact_dict  = {'contacts' : contact_list}
    return render(request,'displayContact.html',contact_dict )

# Zoek Contact
@login_required
def sNaamContact (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('naam','plaats')
    else:
        results = []
    return render(request,"sNaamContact.html", {
        "results": results,
        "query": query
    }) 

@login_required    
def sVoorNaamContact (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(voornaam__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('voornaam','naam')
    else:
        results = []
    return render(request,"sVoorNaamContact.html", {
        "results": results,
        "query": query
    }) 

@login_required
def sPostcodeContact(request):
    query = request.GET.get('q','')
    if query:
        if query == "all":
            results = Contact.objects.distinct().order_by('naam','postcode')
        else:  
            qset = (
                Q(postcode__icontains=query)         
            )       
            results = Contact.objects.filter(qset).distinct().order_by('naam','postcode')
    else:
        results = []
    return render(request,"sPostcodeContact.html", {
        "results": results,
        "query": query
    }) 

@login_required
def sPlaatsContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(plaats__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('naam','plaats')
    else:
        results = []
    return render(request,"sPlaatsContact.html", {
        "results": results,
        "query": query
    })
 
@login_required
def sTelefoonContact (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(telefoon__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('naam','telefoon')
    else:
        results = []
    return render(request,"sTelefoonContact.html", {
        "results": results,
        "query": query
    }) 

@login_required
def sMobielContact (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(mobiel__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('naam','telefoon')
    else:
        results = []
    return render(request,"sTelefoonContact.html", {
        "results": results,
        "query": query
    }) 

@login_required
def sSoortContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(soort__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('naam','plaats')
    else:
        results = []
    return render(request,"sSoortContact.html", {
        "results": results,
        "query": query
    }) 

@login_required
def sStatusContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(status__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('naam','plaats')
    else:
        results = []
    return render(request,"sStatusContact.html", {
        "results": results,
        "query": query
    })

@login_required
def sSoortLidContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(soort_lid__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('naam')
    else:
        results = []
    return render(request,"sSoortLidContact.html", {
        "results": results,
        "query": query
    })

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
        return ( redirect('indexContact')) 
        # form = ContactForm()
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

        template_name = 'deleteContact.html'
        context = {'item' : contact , 'title': 'Contact'}
        return render(request,template_name,context) 
#
# band
#
def allBand(request):
    band_list = Band.objects.order_by('naam')
    content  = {'bands' : band_list}
    return render(request,'displayBand.html',content )

def sNaamBand (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Band.objects.filter(qset).distinct().order_by('naam')
    else:
        results = []
    return render(request,"sNaamBand.html", {
        "results": results,
        "query": query
    }) 
    
def sGenreBand (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(genre__icontains=query)         
        )       
        results = Band.objects.filter(qset).distinct().order_by('naam','genre')
    else:
        results = []
    return render(request,"sGenreBand.html", {
        "results": results,
        "query": query
    })

def sAantalLedenBand (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(aantal_leden__lte=query)         
        )       
        results = Band.objects.filter(qset).distinct().order_by('aantal_leden','naam',)
    else:
        results = []
    return render(request,"sAantalLedenBand.html", {
        "results": results,
        "query": query
    })

def sBedragBand (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(bedrag__lte=query)         
        )       
        results = Band.objects.filter(qset).distinct().order_by('bedrag','naam')
    else:
        results = []
    return render(request,"sBedragBand.html", {
        "results": results,
        "query": query
    })
#CRUD
def createBand(request):
    form = BandForm(request.POST or None)
    if form.is_valid():
        form.save()
        form = BandForm()
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Band'}
    return render(request,template_name,context) 

def editBand(request,pk):
    try :
        band = Band.objects.get(id=pk)
    except Band.DoesNotExist:
         return redirect('index')

    form = BandForm(request.POST or None,instance = band)
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

        template_name = 'deleteContact.html'
        context = {'item' : band , 'title': 'Band'}
        return render(request,template_name,context)
#    
# Fanclub
#
def allFanclub (request):
    fanclub_list = Fanclub.objects.order_by('naam')
    content  = {'fanclubs' : fanclub_list}
    return render(request,'displayFanclub.html',content )

# Zoek
def sNaamFanclub (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results =Fanclub.objects.filter(qset).distinct().order_by('naam')
    else:
        results = []
    return render(request,"sNaamFanclub.html", {
        "results": results,
        "query": query
    }) 

#CRUD
def createFanclub(request):
    form = FanclubForm(request.POST or None)
    if form.is_valid():
        form.save()
        #form = FanclubForm()
        return ( redirect('indexFanclub'))
      
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

        template_name = 'deleteContact.html'
        context = {'item' : fanclub , 'title': 'Fanclubs'}
        return render(request,template_name,context)
#
# zaal
#
def allZaal (request):
    zaal_list = Zaal.objects.order_by('naam')
    content  = {'zalen' : zaal_list}
    return render(request,'displayZaal.html',content )

def sNaamZaal (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Zaal.objects.filter(qset).distinct().order_by('naam')
    else:
        results = []
    return render(request,"sNaamZaal.html", {
        "results": results,
        "query": query
    }) 

#CRUD
def createZaal(request):
    form = ZaalForm(request.POST or None)
    if form.is_valid():
        form.save()
        return ( redirect('indexZaal'))
        
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

        template_name = 'deleteContact.html'
        context = {'item' : zaal , 'title': 'Zaal'}
        return render(request,template_name,context)
#
# Cateraar
#
def allCateraar (request):
    cateraar_list = Cateraar.objects.order_by('naam')
    content  = {'cateraars' : cateraar_list}
    return render(request,'displayCateraar.html',content )

def sNaamCateraar (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Cateraar.objects.filter(qset).distinct().order_by('naam')
    else:
        results = []
    return render(request,"sNaamCateraar.html", {
        "results": results,
        "query": query
    }) 

#CRUD    
def createCateraar(request):
    form = CateraarForm(request.POST or None)
    if form.is_valid():
        form.save()
        return ( redirect('indexCateraar'))

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

        template_name = 'deleteContact.html'
        context = {'item' : cateraar , 'title': 'Cateraar'}
        return render(request,template_name,context)
#
# Evenement
#
def allEvenement (request):
    evenement_list = Evenement.objects.order_by('naam','datum')
    content  = {'evenementen' : evenement_list}
    return render(request,'displayEvenement.html',content )

#zoek
def sNaamEvenement (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Evenement.objects.filter(qset).distinct().order_by('naam')
    else:
        results = []
    return render(request,"sNaamEvenement.html", {
        "results": results,
        "query": query
    }) 

def sLocatieEvenement (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(locatie__icontains=query)         
        )       
        results = Evenement.objects.filter(qset).distinct().order_by('naam')
    else:
        results = []
    return render(request,"sNaamEvenement.html", {
        "results": results,
        "query": query
    }) 

def sEntreePrijsEvenement (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(entree_prijs__lte=query)         
        )       
        results = Evenement.objects.filter(qset).distinct().order_by('naam')
    else:
        results = []
    return render(request,"sNaamEvenement.html", {
        "results": results,
        "query": query
    })  
'''
def sLocatieEvenement (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(entree_prijs__lte=query)         
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
def createEvenement(request):
    form = EvenementForm(request.POST or None)
    if form.is_valid():
        form.save()
        return ( redirect('indexEvenement')) 
    
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

        template_name = 'deleteContact.html'
        context = {'item' : evenement , 'title': 'Evenement'}
        return render(request,template_name,context)
#
#
# Akties
#