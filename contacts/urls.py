from django.urls import path
from . import views

urlpatterns = [

	path('time/',views.current_datetime,name='current_datetime'),	
	path('about/',views.about,name='about'),
	path('todo/',views.todo,name='todo'),

#index	
	path('',views.index,name='index'),
	path('indexContact',views.indexContact,name='indexContact'),
	path('indexBand',views.indexBand,name='indexBand'),
	path('indexFanclub',views.indexFanclub,name='indexFanclub'),


#contact
	path('contact/',views.contact,name='contact'),
	path('scNaam/',views.scNaam,name='scNaam'),
	path('scVoorNaam/',views.scVoorNaam,name='scVoorNaam'),
	path('scPostcode/',views.scPostcode,name='scPostcode'),
	path('scPlaats/',views.scPlaats,name='scPlaats'),
	path('scSoortLid/',views.scSoortLid,name='scSoortLid'),
	path('scSoort/',views.scSoort,name='scSoort'),
 	path('c_create/',views.contact_post_create_view,name='c_create'),

#band
	path('band/',views.band,name='band'),
	path('sb_naam/',views.sb_naam,name='sb_naam'),
	path('sb_genre/',views.sb_genre,name='sb_genre'),
	
	path('b_create/',views.band_post_create_view,name='b_create'),

#fanclub
	path('fanclub/',views.fanclub,name='fanclub'),
]


#zaal
#Catering
#Evenement

#Alties
#About