from django.urls import path
from . import views

urlpatterns = [

	path('time/',views.current_datetime,name='current_datetime'),	
	path('about/',views.about,name='about'),
	path('todo/',views.todo,name='todo'),

#Index	
	path('',views.index,name='index'),
	path('indexContact',views.indexContact,name='indexContact'),
	path('indexBand',views.indexBand,name='indexBand'),
	path('indexFanclub',views.indexFanclub,name='indexFanclub'),
	path('indexZaal',views.indexZaal,name='indexZaal'),
	path('indexCateraar',views.indexCateraar,name='indexCateraar'),
	path('indexEvenement',views.indexEvenement,name='indexEvenement'),

#Contact
	path('allContact/',views.allContact,name='allContact'),
	path('sNaamContact/',views.sNaamContact,name='sNaamContact'),
	path('sVoorNaamContact/',views.sVoorNaamContact,name='sVoorNaamContact'),
	path('sPostcodeContact/',views.sPostcodeContact,name='sPostcodeContact'),
	path('sPlaatsContact/',views.sPlaatsContact,name='sPlaatsContact'),
	
	path('sSoortContact/',views.sSoortContact,name='sSoortContact'),
	path('sStatusContact/',views.sStatusContact,name='sStatusContact'),
	path('sSoortLidContact/',views.sSoortLidContact,name='sSoortLidContact'),
	path('sTelefoonContact/',views.sTelefoonContact,name='sTelefoonContact'),
	path('sMobielContact/',views.sMobielContact,name='sMobielContact'),

 	path('createContact/',views.createContact,name='createContact'),
	path('contact/edit/<int:pk>',views.editContact,name='editContact'),
	path('contact/delete/<int:pk>',views.deleteContact,name='deleteContact'),

	path('exportContact/',views.exportContact,name='exportContact'),

#Band
	path('allBand/',views.allBand,name='allBand'),
	path('sNaamBand/',views.sNaamBand,name='sNaamBand'),
	path('sGenreBand/',views.sGenreBand,name='sGenreBand'),
	path('sAantalLedenBand/',views.sAantalLedenBand,name='sAantalLedenBand'),
	path('sBedragBand/',views.sBedragBand,name='sBedragBand'),
	
	path('createBand/',views.createBand,name='createBand'),
	path('band/edit/<int:pk>',views.editBand,name='editBand'),
	path('band/delete/<int:pk>',views.deleteBand,name='deleteBand'),

	path('exportBand/',views.exportBand,name='exportBand'),

#Fanclub
	path('createFanclub/',views.createFanclub,name='createFanclub'),
	path('allFanclub/',views.allFanclub,name='allFanclub'),
	path('sNaamFanclub/',views.sNaamFanclub,name='sNaamFanclub'),
	path('fanclub/edit/<int:pk>',views.editFanclub,name='editFanclub'),
	path('fanclub/delete/<int:pk>',views.deleteFanclub,name='deleteFanclub'),

	path('exportFanclub/',views.exportFanclub,name='exportFanclub'),

#Zaal
	path('allZaal/',views.allZaal,name='allZaal'),
	path('sNaamZaal/',views.sNaamZaal,name='sNaamZaal'),
	path('createZaal/',views.createZaal,name='createZaal'),
	path('zaal/edit/<int:pk>',views.editZaal,name='editZaal'),
	path('zaal/delete/<int:pk>',views.deleteZaal,name='deleteZaal'),

	path('exportZaal/',views.exportZaal,name='exportZaal'),

#Cateraar
	path('allCateraar/',views.allCateraar,name='allCateraar'),
	path('sNaamCateraar/',views.sNaamCateraar,name='sNaamCateraar'),
	path('createCateraar/',views.createCateraar,name='createCateraar'),
	path('cateraar/edit/<int:pk>',views.editCateraar,name='editCateraar'),
	path('cateraar/delete/<int:pk>',views.deleteCateraar,name='deleteCateraar'),

	path('exportCateraar/',views.exportCateraar,name='exportCateraar'),

#Evenement
	path('allEvenement/',views.allEvenement,name='allEvenement'),
	path('sNaamEvenement/',views.sNaamEvenement,name='sNaamEvenement'),
	path('sEntreePrijsEvenement/',views.sEntreePrijsEvenement,name='sEntreePrijsEvenement'),
	path('sLocatieEvenement/',views.sLocatieEvenement,name='sLocatieEvenement'),
	path('createEvenement/',views.createEvenement,name='createEvenement'),
	path('evenement/edit/<int:pk>',views.editEvenement,name='editEvenement'),
	path('evenement/delete/<int:pk>',views.deleteEvenement,name='deleteEvenement'),

	path('exportEvenement/',views.exportEvenement,name='exportEvenement'),

]

#Akties
#About