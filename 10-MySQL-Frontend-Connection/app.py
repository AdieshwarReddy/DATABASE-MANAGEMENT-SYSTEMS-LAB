
import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="YOUR_PASSWORD",
    database="dbms_lab"
)

cursor = connection.cursor()

cursor.execute("SELECT * FROM employees")

records = cursor.fetchall()

for row in records:
    print(row)

cursor.close()
connection.close()
