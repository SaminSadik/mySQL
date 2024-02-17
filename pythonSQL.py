import mysql.connector

myConnection = mysql.connector.connect (
    host = "localhost",
    user = "root",
    passwd = "password"
) #! Openning a mySQL Connection

print(myConnection) #! viewing the object

myCursor = myConnection.cursor() #! to make queries in the connection

myDB = "pyQuery"
# sqlQuery = "CREATE DATABASE " + myDB #! creating a database
# myCursor.execute(sqlQuery) #! executing a SQL query


myConnection = mysql.connector.connect (
    host = "localhost",
    user = "root",
    passwd = "password",
    database = myDB #! Specifying db while connecting
)
myCursor = myConnection.cursor()
#! multi-line query:
# sqlQuery = """
#             DROP TABLE student;
#             CREATE TABLE student
#             (
#                 Roll INT PRIMARY KEY,
#                 Name VARCHAR(20)
#             )
#             """
# myCursor.execute(sqlQuery)

sqlQuery = """
            INSERT INTO student(Roll, Name)
            VALUES(101, "Sadik San")
            """
myCursor.execute(sqlQuery)
myConnection.commit() #! To apply changes like INSERT

print("Query Successful")