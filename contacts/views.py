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
def contact(request):
    contact_list = Contact.objects.order_by('naam')
    contact_dict  = {'contacts' : contact_list}
    return render(request,'displayContact.html',contact_dict )

# Zoek Contact
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

def sPostcodeContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(postcode__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('postcode','naam')
    else:
        results = []
    return render(request,"sPostcodeContact.html", {
        "results": results,
        "query": query
    }) 

def sPlaatsContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(plaats__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('plaats','naam')
    else:
        results = []
    return render(request,"sPlaatsContact.html", {
        "results": results,
        "query": query
    }) 

def sTelefoonContact (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(telefoon__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct().order_by('telefoon','naam')
    else:
        results = []
    return render(request,"sTelefoonContact.html", {
        "results": results,
        "query": query
    }) 

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

def sSoortLidContact(request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(soort_lid__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"sSoortLidContact.html", {
        "results": results,
        "query": query
    })


#CRUD contacts

'''
def contact_post_detail_view(request):
    # 1 object -> detail view
    obj = get_object_or_404(Contact)
    template_name = 'detail.html'
    context = {"object": obj}
    return render(request, template_name, context)
'''

def contactCreate(request):
        form = ContactForm(request.POST or None)
        if form.is_valid():
            form.save()
            # obj = Contact.objects.create(**form.cleaned_data)
            form = ContactForm()
        template_name = 'inputForm.html'
        context = {'form' : form, 'title': 'Contact'}
        return render(request,template_name,context)

def contactEdit(request,pk):
        
        try :
            contact_sel = Contact.objects.get(id=pk)
        except Contact.DoesNotExist:
            return redirect('index')

        form = ContactForm(request.POST or None,instance = contact_sel)
        if form.is_valid():
            form.save()
            # obj = Contact.objects.create(**form.cleaned_data)
            form = ContactForm()
        template_name = 'contactForm.html'
        context = {'form' : form, 'title': 'Contact'}
        return render(request,template_name,context)

#
# band
#
def band(request):
    band_list = Band.objects.order_by('naam')
    content  = {'bands' : band_list}
    return render(request,'displayBand.html',content )

def sbnaam (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Band.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"searchBand.html", {
        "results": results,
        "query": query
    }) 
    
def sbgenre (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(genre__icontains=query)         
        )       
        results = Band.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"searchBand.html", {
        "results": results,
        "query": query
    })

def bandCreate(request):
        form = BandForm(request.POST or None)
        if form.is_valid():
            form.save()
            # obj = Band.objects.create(**form.cleaned_data)
            form = BandForm()
        template_name = 'inputForm.html'
        context = {'form' : form, 'title': 'Band'}
        return render(request,template_name,context) 
#    
# Fanclub
#
def fanclub (request):
    fanclub_list = Fanclub.objects.order_by('naam')
    content  = {'fanclubs' : fanclub_list}
    return render(request,'displayFanclub.html',content )

# Zoek
def sfnaam (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results =Fanclub.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"searchFanclub.html", {
        "results": results,
        "query": query
    }) 

def fanclubCreate(request):
    form = FanclubForm(request.POST or None)
    if form.is_valid():
        form.save()
        # obj = Band.objects.create(**form.cleaned_data)
        form = FanclubForm()
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Fanclub'}
    return render(request,template_name,context)

#
# zaal
#
def zaal (request):
    zaal_list = Zaal.objects.order_by('naam')
    content  = {'zalen' : zaal_list}
    return render(request,'displayZaal.html',content )

def sznaam (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Zaal.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"searchZaal.html", {
        "results": results,
        "query": query
    }) 

def zaalCreate(request):
    form = ZaalForm(request.POST or None)
    if form.is_valid():
        form.save()
        # obj = Band.objects.create(**form.cleaned_data)
        form = ZaalForm()
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Zaal'}
    return render(request,template_name,context)

#
# Cateraar
#

def cateraar (request):
    cateraar_list = Cateraar.objects.order_by('naam')
    content  = {'cateraars' : cateraar_list}
    return render(request,'displayCateraar.html',content )

def scanaam (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Cateraar.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"searchCateraar.html", {
        "results": results,
        "query": query
    }) 
    
def cateraarCreate(request):
    form = CateraarForm(request.POST or None)
    if form.is_valid():
        form.save()
        # obj = Band.objects.create(**form.cleaned_data)
        form = CateraarForm()
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Cateraar'}
    return render(request,template_name,context)

#
# Evenement
#
def evenement (request):
    evenement_list = Evenement.objects.order_by('naam')
    content  = {'evenementen' : evenement_list}
    return render(request,'displayEvenement.html',content )

def sevnaam (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Evenement.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"searchEvenement.html", {
        "results": results,
        "query": query
    }) 

def evenementCreate(request):
    form = EvenementForm(request.POST or None)
    if form.is_valid():
        form.save()
        # obj = Evenement.objects.create(**form.cleaned_data)
        form = EvenementForm()
    template_name = 'inputForm.html'
    context = {'form' : form, 'title': 'Evenement'}
    return render(request,template_name,context)
  
#
# Akties
#