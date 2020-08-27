from django.urls import path
from . import views

urlpatterns = [
	path('about/',views.about,name='about'),
	path('time/',views.current_datetime,name='current_datetime'),
	path('',views.index,name='index'),
]



