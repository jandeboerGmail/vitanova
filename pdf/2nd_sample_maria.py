
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas

#import Mariadb
import mysql.connector
import sys
#Connnect to MariaDB
try:
    mydb = mysql.connector.connect(
        user= "wp",
        password = "FQ8pDqxhf00TteI0",
        host="192.168.1.10",
        port=3306,
        database="vitanova"
    )

except mysql.Error as e:
    print(f"error connecting to Mariadb Platform: {e}")
    sys.exit(1)

# Get Cursor
mycursor = mydb.cursor()

#sql = "SELECT naam,adres,postcode,plaats FROM contacts_contact WHERE naam=(%s)",
##al = ("jan")
#mycursor.execute(sql,val)

canvas = canvas.Canvas("form.pdf", pagesize=letter)
canvas.setLineWidth(.3)
canvas.setFont('Helvetica', 12)

#sql = ("SELECT * FROM contacts_contact WHERE naam = %s")
sql = ("SELECT * FROM contacts_contact ORDER by naam")

val = ("Clif Jansen",)

mycursor.execute(sql)
myresult = mycursor.fetchall()

for x in myresult:
  print(x)

#cur.execute(
#    "SELECT naam,adres,postcode,plaats FROM contacts_contact WHERE naam=?",
#    (some_naam,))

#print Result
#for (naam, adres) in cur:
#    print(f"naam: {naam}, adres {adres}")

# UPDATE
#mycursor = mydb.cursor()
#sql = "UPDATE customers SET address = %s WHERE address = %s"
#val = ("Valley 345", "Canyon 123")
#mycursor.execute(sql, val)
#mydb.commit()
#print(mycursor.rowcount, "record(s) affected")

canvas.drawString(30,750,'OFFICIAL COMMUNIQUE')
canvas.drawString(30,735,'OF ACME INDUSTRIES')
canvas.drawString(500,750,"12/12/2010")
canvas.line(480,747,580,747)

canvas.drawString(275,725,'AMOUNT OWED:')
canvas.drawString(500,725,"$1,000.00")
canvas.line(378,723,580,723)

canvas.drawString(30,703,'RECEIVED BY:')
canvas.line(120,700,580,700)
canvas.drawString(120,703,"JOHN DOE")

canvas.save()
