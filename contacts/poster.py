from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from contacts.models import Evenement, Zaal, Band

from django.conf import settings

import locale
import sys
import datetime

class Poster():

    def pdf(pk,canvas):

        # ccenter line
        def start_point(inStr,size):
            middle = 295
            length = len(inStr)
            x = middle - (length * size * 0.4 ) / 2
            return x

        def printCanvas(row,canvas): 
            
            #canvas.drawImage("logo_stichting_adelaar.png",30,600,width=100,height=100)
            #canvas.drawImage("logo_wapenurbajw.png",500,600,width=100,height=100)

            canvas.setLineWidth(.3)
            canvas.setFont('Helvetica', 12)
            # Border
            canvas.line(10,747,600,747)
            canvas.line(10,10,600,10)
            canvas.line(10,10,10,747)
            canvas.line(600,10,600,747)

            # Middle line
            #canvas.line(295,10,295,747)

            if row.uitverkocht:
                #canvas.setFillColorRGB(1,0.8,0.8)
                 #canvas.rect(5,5,652,792,fill=1)
                #canvas.setFillColor(HexColor("#99b0e7"))
                canvas.setLineWidth(5.0)

                #cross
                #canvas.line(10,747,600,10)
                #anvas.line(10,10,600,747)

                # banner line
                canvas.line(50,300,560,547)
        
                canvas.setFont("Helvetica-Bold", 30)
                canvas.setFillColorRGB(1,0,0)
                uitverkocht = "-- Cancelled --"
                canvas.drawString(start_point(row.organisator,30),605, uitverkocht)
                canvas.setFillColorRGB(0,0,0)

            canvas.setFont("Helvetica-Bold", 24)
            canvas.drawString(start_point(row.organisator,24) ,700, row.organisator)

            canvas.setFont("Helvetica-Bold", 16)
            canvas.drawString(start_point(row.organisator_info,16),670, row.organisator_info)

            canvas.setFont("Helvetica", 14)
            organisator = 'Organisator Acara Adoe Adoe Team'
            canvas.drawString(start_point(row.organisator,40),645, organisator)

            canvas.setFont("Helvetica-Bold", 24)
            band = Band.objects.get(id=row.band_id)
           
            locale.setlocale(locale.LC_TIME,'nl_NL.utf8')
            datum = "Op " +  row.datum.strftime("%A %d %B %Y")  
            metband = "met "  + band.naam
            canvas.drawString(start_point(datum,28),570, datum)
            canvas.drawString(start_point(metband,28),540, metband)
    
            # print(settings.MEDIA_ROOT)
            image = settings.MEDIA_ROOT + "/images/default.jpg"
            if band.band_image:
                image = settings.MEDIA_ROOT  + "/" +  str(band.band_image) 
            canvas.drawImage(image,100,310,width=400,height=200)

            aanvang   = "Aanvang:   " + str(row.aanvang)[0:5] + " uur"
            zaal_open = "Zaal open: " + str(row.zaal_open)[0:5] + " uur"
            canvas.setFont("Helvetica-Bold", 12)
            canvas.drawString(100,290, aanvang)
            canvas.drawString(100,275, zaal_open)

            Einde  = "Einde:   " + str(row.einde)[0:5] + " uur"
            Entree = "Entree: " + "  € " + str(row.entree_prijs)
            canvas.drawString(395,290, Einde)
            canvas.drawString(395,275, Entree)

            canvas.setFont("Helvetica", 12)
            canvas.drawString(100,250, row.catering_info)
            canvas.drawString(350,250, row.activiteiten_info)

            canvas.setFont("Helvetica-Bold", 10)
            volgende_data = "Volgende data:"
            canvas.drawString(100,210, volgende_data)
            canvas.setFont("Helvetica", 10)
            canvas.drawString(100,195, row.volgende_datum_1)
            canvas.drawString(100,180, row.volgende_datum_2)

            zaal = Zaal.objects.get(id=row.locatie_id)
            canvas.setFont("Helvetica-Bold", 10)
            canvas.drawString(100,130, zaal.naam)
            canvas.drawString(100,115, zaal.adress)
            canvas.drawString(100,100,  zaal.postcode)
            canvas.drawString(145,100,  zaal.plaats)
            canvas.drawString(100,85,  zaal.telefoon)

            #canvas.drawImage("pictures/logo_stichting_adelaar.png",30,30,width=100,height=100)
            canvas.drawImage("pictures/logo_stichting_adelaar.png",320,110,width=100,height=100)
            #canvas.drawImage("pictures/logo_wapenurbajw.png",500,30,width=100,height=100)
            canvas.drawImage("pictures/logo_wapenurbajw.png",445,15,width=100,height=100)

            canvas.setFont("Helvetica-Bold", 14)
            stichtig = 'Stichting'
            canvas.drawString(270,60, stichtig)
            canvas.setFont("Helvetica-Bold", 18)
            vitanova = 'Vita Nova'
            canvas.drawString(260,40, vitanova)
            
            canvas.save()
            return (canvas)
    
        # main
        evenement = Evenement.objects.get(id=pk)
        '''
        e = evenement
        attrs = vars(e)
        print("------------")
        print(', \n'.join("%s: %s" % item for item in attrs.items()))
        '''
        canvas = printCanvas(evenement,canvas) 
        return(canvas)