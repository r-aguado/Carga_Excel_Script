import mysql.connector

def get_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="Ragu@d0perulero",
        database="lga_db",
        port=3306
    )
