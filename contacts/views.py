from django.shortcuts import render
from django.http import HttpResponse
import datetime

# Create your views here.
def current_datetime(request):
    now = datetime.datetime.now()
    html = "<html><body>It is now %s.</body></html>" % now
    return HttpResponse(html)

def about(request):
	return HttpResponse("Hello About.")

def index(request):
	return HttpResponse("Hello world. You're at the contacts index.")
