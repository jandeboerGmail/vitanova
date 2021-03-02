from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas

#import Mariadb
import mysql.connector
import sys
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

#sql = "SELECT naam,adres,postcode,plaats FROM contacts_contact WHERE naam=(%s)",
##al = ("jan")
#mycursor.execute(sql,val)

canvas = canvas.Canvas("vitanova_poster.pdf", pagesize=letter)
canvas.setLineWidth(.3)
canvas.setFont('Helvetica', 12)

#sql = ("SELECT * FROM contacts_contact WHERE naam = %s")
#sql = ("SELECT * FROM contacts_contact ORDER by naam")

#val = ("Clif Jansen",)

#sql = ("SELECT * FROM contacts_evenement where naam = 'Evenemnent Xanur'")
#sql = ("SELECT * FROM contacts_evenement where naam = %s")
sql = ("SELECT e.naam as evenement_naam, e.aanvang as evenement_aanvang, e.einde as evenement_einde, e.zaal_open as evenement_open , \
        e.entree_prijs as evenement_prijs, e.organisator as evenement_organisator, e.organisator_info as evenement_organisator_info, \
        e.catering_info as evenement_catering_info, e.activiteiten_info as evenement_activiteiten_info, \
        e.volgende_activiteiten as evenement_volgende_activiteiten, e.memo as evenement_info, \
        b.naam as band_naam, b.image as band_image,\
        z.naam as zaal_naam , z.adress as zaal_adress, z.postcode as zaal_postcode, z.plaats as zaal_plaats, z.telefoon  as zaal_telefoon \
       FROM contacts_evenement e , contacts_band b , contacts_zaal z \
        where e.band_id = b.id and e.locatie_id = z.id \
        and e.naam = %s")
val = ("Evenemnent Xanur",)

mycursor.execute(sql,val)
myresult = mycursor.fetchall()

for x in myresult:
  print(x)
  
print ('MY RESULT')
print (myresult)
inch = "2.25"

canvas.drawString(30,750, inch)
canvas.drawString(500,750, inch)
#canvas.drawString(500,750,"12/12/2010")
canvas.line(10,747,580,747)
canvas.drawImage("Beatles.jpg",100,400,width=400,height=200)

canvas.drawString(275,725,'AMOUNT OWED:')
canvas.drawString(500,725,"$1,000.00")
canvas.line(378,723,580,723)

canvas.drawString(30,703,'RECEIVED BY:')
canvas.line(120,700,580,700)
canvas.drawString(120,703,"JOHN DOE")

canvas.save()
