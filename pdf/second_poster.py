from reportlab.lib.pagesizes import letter, A4
from reportlab.pdfgen import canvas

#import Mariadb
import mysql.connector
import locale
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
    evenement_volgende_datum_1      = row[10]
    evenement_volgende_datum_2      = row[11]
    evenement_uitverkocht           = row[12]
    evenement_info                  = row[13]
    band_naam                       = row[14]
    band_image                      = row[15]
    zaal_naam                       = row[16]
    zaal_adress                     = row[17]
    zaal_postcode                   = row[18]
    zaal_plaats                     = row[19]
    zaal_telefoon                   = row[20]

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
    print (evenement_uitverkocht)
    print("--------------------")
    print (band_naam)
    print (band_image)
    print (zaal_naam)
    print (zaal_adress)
    print (zaal_postcode)
    print (zaal_plaats)
    print (zaal_telefoon)
    
    print("--------------------")
    print(row)

    #canvas = canvas.Canvas("vitanova_poster.pdf", pagesize=letter)
   
    
    #canvas.drawImage("logo_stichting_adelaar.png",30,600,width=100,height=100)
    #canvas.drawImage("logo_wapenurbajw.png",500,600,width=100,height=100)
   
    # Border
    canvas.setLineWidth(.3)
    canvas.line(10,747,600,747)
    canvas.line(10,10,600,10)
    canvas.line(10,10,10,747)
    canvas.line(600,10,600,747)

    if evenement_uitverkocht:
        canvas.setLineWidth(10.0)
        canvas.line(10,747,600,10)
        canvas.line(10,10,600,747)
        canvas.setFont("Helvetica-Bold", 40)
        uitverkocht = "Uitverkocht /  Vervallen"
        canvas.drawString(95,565, uitverkocht)

    canvas.setFont("Helvetica-Bold", 24)
    canvas.drawString(240,700, evenement_organisator)

    canvas.setFont("Helvetica-Bold", 16)
    canvas.drawString(120,650, evenement_organisator_info)
    canvas.setFont("Helvetica", 12)
    canvas.drawString(230,615, organisator)

    canvas.setFont("Helvetica-Bold", 20)
    locale.setlocale(locale.LC_TIME,'nl_NL.utf8')
    datum = "op " +  evenement_datum.strftime("%A %d %B %Y") + ' met'
    canvas.drawString(170,520, datum)

    canvas.drawImage("Beatles.jpg",100,300,width=400,height=200)

    aanvang   = "Aanvang:   " + str(evenement_aanvang)[0:5] + " uur"
    zaal_open = "Zaal open: " + str(evenement_open)[0:5] + " uur"
    canvas.setFont("Helvetica-Bold", 12)
    canvas.drawString(100,280, aanvang)
    canvas.drawString(100,265, zaal_open)

    Einde  = "Einde:   " + str(evenement_einde)[0:5] + " uur"
    Entree = "Entree: " + " € " + str(evenement_prijs)
    canvas.drawString(395,280, Einde)
    canvas.drawString(395,265, Entree)

    canvas.setFont("Helvetica", 12)
    canvas.drawString(100,240, evenement_catering_info)
    canvas.drawString(350,240, evenement_activiteiten_info)

    canvas.setFont("Helvetica-Bold", 10)
    volgende_data = "Volgende data:"
    canvas.drawString(100,190, volgende_data)
    canvas.setFont("Helvetica", 10)
    canvas.drawString(100,175, evenement_volgende_datum_1)
    canvas.drawString(100,160, evenement_volgende_datum_2)

    canvas.setFont("Helvetica-Bold", 10)
    canvas.drawString(100,120, zaal_naam)
    canvas.drawString(100,105, zaal_adress)
    canvas.drawString(100,90, zaal_postcode)
    canvas.drawString(145,90, zaal_plaats)
    canvas.drawString(100,75, zaal_telefoon)

    #canvas.drawImage("logo_stichting_adelaar.png",30,30,width=100,height=100)
    canvas.drawImage("logo_stichting_adelaar.png",320,110,width=100,height=100)
    #canvas.drawImage("logo_wapenurbajw.png",500,30,width=100,height=100)
    canvas.drawImage("logo_wapenurbajw.png",445,15,width=100,height=100)

    canvas.setFont("Helvetica-Bold", 14)
    stichtig = 'Stichting'
    canvas.drawString(205,40, stichtig)
    canvas.setFont("Helvetica-Bold", 18)
    vitanova = 'Vita Nova'
    canvas.drawString(270,40, vitanova)
    
    canvas.save()

#main

#Connnect to MariaDB1111
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

canvas = canvas.Canvas("vitanova_poster.pdf", pagesize=letter)
canvas.setLineWidth(.3)
canvas.setFont('Helvetica', 12)

print("connected to Mariadb Platform - exxecuting query")
sql = ("SELECT e.naam as evenement_naam, e.datum as evenement_datum, e.aanvang as evenement_aanvang, e.einde as evenement_einde, e.zaal_open as evenement_open , \
            e.entree_prijs as evenement_prijs, e.organisator as evenement_organisator, e.organisator_info as evenement_organisator_info, \
            e.catering_info as evenement_catering_info, e.activiteiten_info as evenement_activiteiten_info, \
            e.volgende_datum_1 as volgende_datum_1, e.volgende_datum_2 as volgende_datum, e.uitverkocht as evenement_uitverkocht, e.memo as evenement_info, \
            b.naam as band_naam, b.image as band_image,\
            z.naam as zaal_naam , z.adress as zaal_adress, z.postcode as zaal_postcode, z.plaats as zaal_plaats, z.telefoon  as zaal_telefoon \
        FROM contacts_evenement e , contacts_band b , contacts_zaal z \
        where e.band_id = b.id and e.locatie_id = z.id \
        and e.id = %s")
val = (3,)

mycursor.execute(sql,val)
myresult = mycursor.fetchall()

for row in myresult:
  printCanvas(row,canvas)
  