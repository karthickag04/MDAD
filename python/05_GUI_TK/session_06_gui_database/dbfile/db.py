import mysql.connector

class mydbclass:
    def myDB(self):
        """Establish a database connection."""
        dbcon = mysql.connector.connect(
            host="192.168.29.244",
            user="test01",
            password="test@123",
            database="a"
        )
        return dbcon
    
    def insertrecord(self):
        """Insert a record with hardcoded values."""
        dbcon = self.myDB()
        cursor = dbcon.cursor()
        statement = "INSERT INTO record (value1, value2) VALUES (23, 23);"
        cursor.execute(statement)
        dbcon.commit()
        dbcon.close()

    def insertrecord1(self, v1, v2):
        """Insert a record with dynamic values."""
        dbcon = self.myDB()
        cursor = dbcon.cursor()
        statement = "INSERT INTO record (value1, value2) VALUES (%s, %s);"
        cursor.execute(statement, (v1, v2))
        dbcon.commit()
        dbcon.close()

    def updaterecord(self):
        """Update records with hardcoded values."""
        dbcon = self.myDB()
        cursor = dbcon.cursor()
        statement = "UPDATE record SET value2 = 0 WHERE value1 = 0;"
        cursor.execute(statement)
        dbcon.commit()
        dbcon.close()

    def updaterecord1(self, v1, v2):
        """Update records with dynamic values."""
        dbcon = self.myDB()
        cursor = dbcon.cursor()
        statement = "UPDATE record SET value2 = %s WHERE value1 = %s;"
        cursor.execute(statement, (v2, v1))
        dbcon.commit()
        dbcon.close()

    def deleterecord(self, v1):
        """Delete records based on value1."""
        dbcon = self.myDB()
        cursor = dbcon.cursor()
        statement = "DELETE FROM record WHERE value1 = %s;"
        cursor.execute(statement, (v1,))
        dbcon.commit()
        dbcon.close()

    def selectrecords(self):
        """Select and fetch all records."""
        dbcon = self.myDB()
        cursor = dbcon.cursor()
        statement = "SELECT value1, value2 FROM record;"
        cursor.execute(statement)
        results = cursor.fetchall()
        dbcon.close()
        return results
