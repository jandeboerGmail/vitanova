from django.urls import path
from . import views

urlpatterns = [

	path('time/',views.current_datetime,name='current_datetime'),	
	path('about/',views.about,name='about'),

#index	
	path('',views.index,name='index'),
	path('index_contact',views.index_contact,name='index_contact'),
	path('index_band',views.index_band,name='index_band'),
	path('index_fanclub',views.index_fanclub,name='index_fanclub'),


#contact
	path('contact/',views.contact,name='contact'),
	path('sc_naam/',views.sc_naam,name='sc_naam'),
	path('sc_adres/',views.sc_adres,name='sc_cadres'),
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