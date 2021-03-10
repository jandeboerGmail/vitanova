from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from contacts.models import Evenement, Zaal, Band

import locale
import sys
import datetime

class Poster():

    def pdf(pk,canvas):

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

            if row.uitverkocht:
                canvas.setLineWidth(10.0)
                canvas.line(10,747,600,10)
                canvas.line(10,10,600,747)
                canvas.setFont("Helvetica-Bold", 40)
                uitverkocht = "Uitverkocht /  Vervallen"
                canvas.drawString(95,570, uitverkocht)

            canvas.setFont("Helvetica-Bold", 24)
            canvas.drawString(240,700, row.organisator)

            canvas.setFont("Helvetica-Bold", 16)
            canvas.drawString(120,650, row.organisator_info)
            canvas.setFont("Helvetica", 12)
            organisator = 'Organisator van Acara Adoe Adoe'
            canvas.drawString(230,615, organisator)

            canvas.setFont("Helvetica-Bold", 20)
            band = Band.objects.get(id=row.band_id)
           
            locale.setlocale(locale.LC_TIME,'nl_NL.utf8')
            datum = "op " +  row.datum.strftime("%A %d %B %Y")  
            metband = "met "  + band.naam
            canvas.drawString(170,540, datum)
            canvas.drawString(170,520, metband)
    
            image = "media/default.jpg"
            if band.image:
                image = str(band.image)
            print (str(band.image))
            print ('Band Image==========')
           
            print (image)
            canvas.drawImage(image,100,300,width=400,height=200)

            aanvang   = "Aanvang:   " + str(row.aanvang)[0:5] + " uur"
            zaal_open = "Zaal open: " + str(row.zaal_open)[0:5] + " uur"
            canvas.setFont("Helvetica-Bold", 12)
            canvas.drawString(100,280, aanvang)
            canvas.drawString(100,265, zaal_open)

            Einde  = "Einde:   " + str(row.einde)[0:5] + " uur"
            Entree = "Entree: " + "  € " + str(row.entree_prijs)
            canvas.drawString(395,280, Einde)
            canvas.drawString(395,265, Entree)

            canvas.setFont("Helvetica", 12)
            canvas.drawString(100,240, row.catering_info)
            canvas.drawString(350,240, row.activiteiten_info)

            canvas.setFont("Helvetica-Bold", 10)
            volgende_data = "Volgende data:"
            canvas.drawString(100,190, volgende_data)
            canvas.setFont("Helvetica", 10)
            canvas.drawString(100,175, row.volgende_datum_1)
            canvas.drawString(100,160, row.volgende_datum_2)

            zaal = Zaal.objects.get(id=row.locatie_id)
            canvas.setFont("Helvetica-Bold", 10)
            canvas.drawString(100,120, zaal.naam)
            canvas.drawString(100,105, zaal.adress)
            canvas.drawString(100,90,  zaal.postcode)
            canvas.drawString(145,90,  zaal.plaats)
            canvas.drawString(100,75,  zaal.telefoon)

            #canvas.drawImage("pictures/logo_stichting_adelaar.png",30,30,width=100,height=100)
            canvas.drawImage("pictures/logo_stichting_adelaar.png",320,110,width=100,height=100)
            #canvas.drawImage("pictures/logo_wapenurbajw.png",500,30,width=100,height=100)
            canvas.drawImage("pictures/logo_wapenurbajw.png",445,15,width=100,height=100)

            canvas.setFont("Helvetica-Bold", 14)
            stichtig = 'Stichting'
            canvas.drawString(205,40, stichtig)
            canvas.setFont("Helvetica-Bold", 18)
            vitanova = 'Vita Nova'
            canvas.drawString(270,40, vitanova)
            
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