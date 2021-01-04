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
	path('allContact/',views.allContact,name='allContact'),
	path('sNaamContact/',views.sNaamContact,name='sNaamContact'),
	path('sVoorNaamContact/',views.sVoorNaamContact,name='sVoorNaamContact'),
	path('sPostcodeContact/',views.sPostcodeContact,name='sPostcodeContact'),
	path('sPlaatsContact/',views.sPlaatsContact,name='sPlaatsContact'),
	
	path('sSoortContact/',views.sSoortContact,name='sSoortContact'),
	path('sStatusContact/',views.sStatusContact,name='sStatusContact'),
	path('sSoortLidContact/',views.sSoortLidContact,name='sSoortLidContact'),
	path('sTelefoonContact/',views.sTelefoonContact,name='sTelefoonContact'),

 	path('createContact/',views.createContact,name='createContact'),
	path('contact/edit/<int:pk>',views.editContact,name='editContact'),
	path('contact/delete/<int:pk>',views.deleteContact,name='deleteContact'),

#band
	path('allBand/',views.allBand,name='allBand'),
	path('sNaamBand/',views.sNaamBand,name='sNaamBand'),
	path('sGenreBand/',views.sGenreBand,name='sGenreBand'),
	path('sAantalLedenBand/',views.sAantalLedenBand,name='sAantalLedenBand'),
	path('sBedragBand/',views.sBedragBand,name='sBedragBand'),
	
	path('createBand/',views.createBand,name='createBand'),
	path('band/edit/<int:pk>',views.editBand,name='editBand'),
	path('band/delete/<int:pk>',views.deleteBand,name='deleteBand'),

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

	path('cateraarCreate/',views.cateraarCreate,name='cateraarCreate'),

#evenement
	path('evenement/',views.evenement,name='evenement'),

	path('sevnaam/',views.sevnaam,name='sevnaam'),

	path('evenement_create/',views.evenementCreate,name='evenementCreate'),
]


#Cateraar

#Evenement

#Alties
#About