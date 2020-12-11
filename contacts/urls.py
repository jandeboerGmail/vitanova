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
	path('indexZaal',views.indexZaal,name='indexZaal'),
	path('indexCateraar',views.indexCateraar,name='indexCateraar'),
	path('indexEvenement',views.indexEvenement,name='indexEvenement'),


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
	path('sbnaam/',views.sbnaam,name='sbnaam'),
	path('sbgenre/',views.sbgenre,name='sbgenre'),
	
	path('b_create/',views.band_post_create_view,name='b_create'),

#fanclub
	path('fanclub/',views.fanclub,name='fanclub'),

	path('sfnaam/',views.sfnaam,name='sfnaam'),

#zaal
	path('zaal/',views.zaal,name='zaal'),

	path('sznaam/',views.sznaam,name='sznaam'),

#cateraar
	path('cateraar/',views.cateraar,name='cateraar'),

	path('scanaam/',views.scanaam,name='scanaam'),

#evenement
	path('evenement/',views.evenement,name='evenement'),

	path('sevnaam/',views.sevnaam,name='sevnaam'),
]


#Cateraar

#Evenement

#Alties
#About