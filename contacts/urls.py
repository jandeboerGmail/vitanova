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
	path('sNaamContact/',views.sNaamContact,name='sNaamContact'),
	path('sVoorNaamContact/',views.sVoorNaamContact,name='sVoorNaamContact'),
	path('sPostcodeContact/',views.sPostcodeContact,name='sPostcodeContact'),
	path('sPlaatsContact/',views.sPlaatsContact,name='sPlaatsContact'),
	
	path('sSoortContact/',views.sSoortContact,name='sSoortContact'),
	path('sStatusContact/',views.sStatusContact,name='sStatusContact'),
	path('sSoortLidContact/',views.sSoortLidContact,name='sSoortLidContact'),
	path('sTelefoonContact/',views.sTelefoonContact,name='sTelefoonContact'),

 	path('contact_create/',views.contactCreate,name='contactCreate'),
	path('contact/edit/<int:pk>',views.contactEdit,name='contactEdit'),

#band
	path('band/',views.band,name='band'),
	path('sbnaam/',views.sbnaam,name='sbnaam'),
	path('sbgenre/',views.sbgenre,name='sbgenre'),
	
	path('band_create/',views.bandCreate,name='bandCreate'),

#fanclub
	path('fanclub/',views.fanclub,name='fanclub'),

	path('sfnaam/',views.sfnaam,name='sfnaam'),

	path('fanclub_create/',views.fanclubCreate,name='fanclubCreate'),

#zaal
	path('zaal/',views.zaal,name='zaal'),

	path('sznaam/',views.sznaam,name='sznaam'),

	path('zaal_create/',views.zaalCreate,name='zaalCreate'),

#cateraar
	path('cateraar/',views.cateraar,name='cateraar'),

	path('scanaam/',views.scanaam,name='scanaam'),

	path('cateraar_create/',views.cateraarCreate,name='cateraarCreate'),

#evenement
	path('evenement/',views.evenement,name='evenement'),

	path('sevnaam/',views.sevnaam,name='sevnaam'),

	path('evenement_create/',views.evenementCreate,name='evenementCreate'),
]


#Cateraar

#Evenement

#Alties
#About