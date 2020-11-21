from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from django.http import HttpResponse, Http404
from django import forms
from django.shortcuts import get_object_or_404
from contacts.models import Contact,Category,Band,Fanclub


from contacts.forms import ContactPostModelForm, BandPostModelForm
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

#def index(request):
#	return HttpResponse("Hello world. You're at the contacts index.")
# Contact

@login_required
def index(request):
    contact_list = Contact.objects.order_by('naam')
    contact_dict  = {'contacts' : contact_list}
    return render(request,'index.html',contact_dict )

@login_required
def index_contact(request):
    contact_list = Contact.objects.order_by('naam')
    contact_dict  = {'contacts' : contact_list}
    return render(request,'index_contact.html',contact_dict )

def index_band(request):
    band_list = Band.objects.order_by('naam')
    content  = {'bands' : band_list}
    return render(request,'index_band.html',content )

def index_fanclub(request):
    fanclub_list = Fanclub.objects.order_by('naam')
    content  = {'fanclubs' : fanclub_list}
    return render(request,'index_fanclub.html',content )
    
def contact(request):
    contact_list = Contact.objects.order_by('naam')
    contact_dict  = {'contacts' : contact_list}
    return render(request,'contact.html',contact_dict )

#CRUD contacts

def contact_post_detail_view(request):
    # 1 object -> detail view
    obj = get_object_or_404(Contact)
    template_name = 'detail.html'
    context = {"object": obj}
    return render(request, template_name, context)

def contact_post_create_view(request):
        form = ContactPostModelForm(request.POST or None)
        if form.is_valid():
            form.save()
            # obj = Contact.objects.create(**form.cleaned_data)
            form = ContactPostModelForm()
        template_name = 'form.html'
        context = {'form' : form}
        return render(request,template_name,context)

def band_post_create_view(request):
        form = BandPostModelForm(request.POST or None)
        if form.is_valid():
            form.save()
            # obj = Band.objects.create(**form.cleaned_data)
            form = BandPostModelForm()
        template_name = 'form.html'
        context = {'form' : form}
        return render(request,template_name,context)

def sc_naam (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"search.html", {
        "results": results,
        "query": query
    }) 
    
def sc_adres (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(adres__icontains=query)         
        )       
        results = Contact.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"search.html", {
        "results": results,
        "query": query
    }) 

# bandd

def band(request):
    band_list = Band.objects.order_by('naam')
    content  = {'bands' : band_list}
    return render(request,'band.html',content )

def sb_naam (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(naam__icontains=query)         
        )       
        results = Band.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"search.html", {
        "results": results,
        "query": query
    }) 
    
def sb_genre (request):
    query = request.GET.get('q','')
    if query:
        qset = (
            Q(genre__icontains=query)         
        )       
        results = Band.objects.filter(qset).distinct()
    else:
        results = []
    return render(request,"search.html", {
        "results": results,
        "query": query
    }) 
    
# Fanclub
def fanclub (request):
    fanclub_list = Fanclub.objects.order_by('naam')
    content  = {'fanclubs' : fanclub_list}
    return render(request,'fanclub.html',content )
