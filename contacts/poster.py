from reportlab.lib.pagesizes import letter, A4
from reportlab.pdfgen import canvas

#import Mariadb
import mysql.connector
import sys

def printCanvas(row,canvas): 
    print("printCanvas --------------------")
    organisator                     = 'Organisator van Acara Adoe Adoe'
    evenement_naam                  = row[0]
    evenement_datum                 = row[1]
    evenement_aanvang               = row[2]
    evenement_einde                 = row[3]
    evenement_open                  = row[4]
    evenement_prijs                 = row[5]
    evenement_organisator           = row[6]
    evenement_organisator_info      = row[7]
    evenement_catering_info         = row[8]
    evenement_activiteiten_info     = row[9]
    evenement_volgende_activiteiten = row[10]
    evenement_info                  = row[11]
    band_naam                       = row[12]
    band_image                      = row[13]
    zaal_naam                       = row[14]
    zaal_adress                     = row[15]
    zaal_postcode                   = row[16]
    zaal_plaats                     = row[17]
    zaal_telefoon                   = row[18]

    '''
    print (evenement_naam)
    print (evenement_datum)
    print (evenement_aanvang)
    print (evenement_einde)
    print (evenement_open)
    print (evenement_prijs)
    print (evenement_organisator)
    print (evenement_organisator_info)
    print (evenement_catering_info)
    print (evenement_activiteiten_info)
    print (evenement_info)
    print (band_naam)
    print (band_image)
    print (zaal_naam)
    print (zaal_adress)
    print (zaal_postcode)
    print (zaal_plaats)
    print (zaal_telefoon)
    '''
    print("--------------------")
    print(row)

    #canvas = canvas.Canvas("vitanova_poster.pdf", pagesize=letter)
    canvas.setLineWidth(.3)
    
    #canvas.drawImage("pictures/logo_stichting_adelaar.png",30,600,width=100,height=100)
    #canvas.drawImage("pictures/logo_wapenurbajw.png",500,600,width=100,height=100)
   
    # Border
    canvas.line(10,747,600,747)
    canvas.line(10,10,600,10)
    canvas.line(10,10,10,747)
    canvas.line(600,10,600,747)

    canvas.setFont("Helvetica-Bold", 18)
    canvas.drawString(260,650, evenement_organisator)

    canvas.setFont("Helvetica-Bold", 14)
    canvas.drawString(180,620, evenement_organisator_info)
    canvas.setFont("Helvetica", 12)
    canvas.drawString(240,600, organisator)

    canvas.setFont("Helvetica-Bold", 20)
    datum = "op " +  evenement_datum.strftime("%A %d %b %Y") + ' met'
    canvas.drawString(180,520, datum)

    canvas.drawImage("pictures/Beatles.jpg",100,300,width=400,height=200)

    aanvang   = "Aanvang:   " + str(evenement_aanvang)[0:5] + " uur"
    zaal_open = "Zaal open: " + str(evenement_open)[0:5] + " uur"
    canvas.setFont("Helvetica", 10)
    canvas.drawString(100,290, aanvang)
    canvas.drawString(100,280, zaal_open)

    Einde  = "Einde:   " + str(evenement_einde)[0:5] + " uur"
    Entree = "Entree: " + " € " + str(evenement_prijs)
    canvas.drawString(420,290, Einde)
    canvas.drawString(420,280, Entree)

    canvas.setFont("Helvetica", 12)
    canvas.drawString(100,260, evenement_catering_info)
    canvas.drawString(350,260, evenement_activiteiten_info)

    canvas.setFont("Helvetica-Bold", 12)
    canvas.drawString(100,240, evenement_volgende_activiteiten)

    canvas.drawString(100,180, zaal_naam)
    canvas.drawString(100,165, zaal_adress)
    canvas.drawString(100,150, zaal_postcode)
    canvas.drawString(150,150, zaal_plaats)
    canvas.drawString(100,135, zaal_telefoon)

    #canvas.drawImage("pictures/logo_stichting_adelaar.png",30,30,width=100,height=100)
    canvas.drawImage("pictures/logo_stichting_adelaar.png",320,130,width=100,height=100)
    canvas.drawImage("pictures/logo_wapenurbajw.png",500,30,width=100,height=100)

    canvas.setFont("Helvetica-Bold", 14)
    stichtig = 'Stichting Vita Nova'
    canvas.drawString(300,60, stichtig)
    canvas.save()

def printPoster(id):
    print("printPoster --------------------")
    # Main
    #Connnect to MariaDB
    try:
        mydb = mysql.connector.connect(
            user =  'django',
            password = 'Django2020Pwd!',
            port=3306,
            database="vitanova_dev"
        )

    except mysql.Error as e:
        print(f"error connecting to Mariadb Platform: {e}")
    sys.exit(1)

    # Get Cursor
    mycursor = mydb.cursor()

    sql = ("SELECT e.naam as evenement_naam, e.datum as evenement_datum, e.aanvang as evenement_aanvang, e.einde as evenement_einde, e.zaal_open as evenement_open , \
            e.entree_prijs as evenement_prijs, e.organisator as evenement_organisator, e.organisator_info as evenement_organisator_info, \
            e.catering_info as evenement_catering_info, e.activiteiten_info as evenement_activiteiten_info, \
            e.volgende_activiteiten as evenement_volgende_activiteiten, e.memo as evenement_info, \
            b.naam as band_naam, b.image as band_image,\
            z.naam as zaal_naam , z.adress as zaal_adress, z.postcode as zaal_postcode, z.plaats as zaal_plaats, z.telefoon  as zaal_telefoon \
        FROM contacts_evenement e , contacts_band b , contacts_zaal z \
        where e.band_id = b.id and e.locatie_id = z.id \
        and e.id = %s")
    val = (3,)

    mycursor.execute(sql,val)
    myresult = mycursor.fetchall()

    canvas = canvas.Canvas("vitanova_poster_2.pdf", pagesize=letter)

    for row in myresult:
        print("result --------------------")
        printCanvas(row,canvas)

#main
print("Main --------------------")
printPoster(3)