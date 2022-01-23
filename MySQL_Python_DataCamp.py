import mysql.connector as mysql
import os
from pathlib import Path
import pandas as pd
from datetime import date
from sqlalchemy import create_engine
# from mysql.connector import Error
# myDB = URL(drivername='mysql', host='localhost',
#     database='my_database_name',
#     query={ 'read_default_file' : '/path/to/.my.cnf' }
# )
# engine = create_engine(name_or_url=myDB)
# use the engine as usual, no password needed in your code file :)


def sqlcsvimport(con1, c, tipo, tec):  # cursor from tgt db
    c.execute("DROP TABLE IF EXISTS netparam." + tipo)
    try:  # import baseline csv to sqlite by 10000 rows batch
        xlspath = Path('C:/xml/baseline/')  # baseline csv directory
        base = pd.read_csv(xlspath / Path('bl' + tec + '.csv'), encoding='latin-1')
        # base.to_sql(tipo, conn, if_exists='append', index=False, chunksize=10000)
        # base.to_sql(con=my_conn,name=tipo,if_exists='append', index=False,chunksize=10000)
        # Insert whole DataFrame into MySQL
        base.to_sql(name=tipo, con = con1, if_exists = 'append', index=False, chunksize = 10000)
    except mysql.Error as error:  # mysql error handling 
        print('MySQL error: %s' % (' '.join(error.args)))
    return

# connecting to the database using 'connect()' method
# it takes 3 required parameters 'host', 'user', 'passwd'
# db = mysql.connect(
#     host = "localhost",
#     user = "am_no",
#     passwd = "Py@p4Opt"
# )
# print(db) # it will print a connection object if everything is fine

try:
    db = mysql.connect(option_files="c:/mysql/my11.ini")
    if db.is_connected():
        print(__file__ + " - single config file:")
        print("MySQL connection ID for db: {0}".format(db.connection_id))
        ## creating an instance of 'cursor' class which is used to execute the 'SQL' statements in 'Python'
        cursor = db.cursor()
        ## creating a databse called 'NetParam'
        ## 'execute()' method is used to compile a 'SQL' statement. below statement is used to create the 'NetParam' database
        cursor.execute("DROP DATABASE IF EXISTS netparam")
        cursor.execute("CREATE DATABASE netparam")
        cursor.execute("SHOW DATABASES")
        ## 'fetchall()' method fetches all the rows from the last executed statement
        databases = cursor.fetchall() ## it returns a list of all databases present
        ## printing the list of databases
        print(databases)
        ## showing one by one database
        for database in databases:
            print(database)
except mysql.Error as error:  # mysql error handling 
        print('MySQL error: %s' % (' '.join(error.args)))
# except Error as e:
#     print("Error while connecting to MySQL", e)
# create sqlalchemy engine
# engine = create_engine('mysql+mysqlconnector://[user]:[pass]@[host]:[port]/[schema]', echo=False)
my_conn = create_engine("mysql+mysqlconnector://{user}:{pw}@localhost/{db}"
                       .format(user="am_no", pw="Py@p4Opt", db="netparam"))
# stage1
# conn = sqlite3.connect(dbtgt)
# cur = conn.cursor()
# csvpath = Path('C:/xml/baseline/')  # tec baselines from RF page directory
# for baself in csvpath.glob('*.csv'):  # file iteration inside directory
#     try:
#         os.remove(baself)  # remove old csv files
#     except:
#         print("Error while deleting file : ", baself)
# concat(csvpath, 'UMTS')
# concat(csvpath, 'LTE')
# concat(csvpath, 'Sitios')
# concat(csvpath, 'GSM')
sqlcsvimport(my_conn, cursor, 'baseline', 'sitios')
sqlcsvimport(my_conn, cursor, 'baseline_lte', 'lte')
sqlcsvimport(my_conn, cursor, 'baseline_umts', 'umts')
sqlcsvimport(my_conn, cursor, 'baseline_gsm', 'gsm')
cursor.close()
db.close()
# try:
#     db = msql.connect(host='localhost', user='root',  
#                         password='sql@123')
#     if db.is_connected():
#         cursor = db.cursor()
#         cursor.execute("CREATE DATABASE irisDB")
#         print("irisDB database is created")
# except Error as e:
#     print("Error while connecting to MySQL", e)