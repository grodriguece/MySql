from sshtunnel import SSHTunnelForwarder
import mysql.connector as mysql
import pymysql
import pandas as pd
import csv
from pathlib import Path
from configparser import ConfigParser


def _config(key, arg=None):
    try:
        return cfg.get(read_group, key)
    except Exception:
        return arg

def sqlfromfile (filenam, crsr):
    wrkfl = open(filenam, 'r')
    sqlfl = wrkfl.read()
    wrkfl.close()
    sqlcmds = sqlfl.split(';')
    for cmd in sqlcmds:
        try:
            crsr.execute(cmd)
        except sqlite3.Error as error:  # sqlite error handling
            print('SQLite error: %s' % (' '.join(error.args)))
    return

tabcsv = []
tabsrc = Path('C:/mysql/tabsmysql1.csv')
with open(tabsrc, newline='') as inputfile:
    for row in csv.reader(inputfile):
        tabcsv.append(row[0])
print(tabcsv)
TABLES = {}


read_file = "/mysql/my11.ini" # replace this with the path you want to use
cfg = ConfigParser()
# read_group = 'connector_python' # group in .ini file
read_group = 'amdocs_sr' # group in .ini file
cfg.read(read_file) 
DB1_UNAME = _config("user")  # info for sqlalchemy engine 
DB1_PASS = _config("password")
DB_HOST = _config("host")
DB_NAME = _config("database")
portl = int(_config("port", 3306))
charset = _config("charset", "utf8mb4")
try:
    # db1 = pymysql.connect(user=DB1_UNAME,password=DB1_PASS,host=DB_HOST)
    db1 = pymysql.connect(host=DB_HOST, user=DB1_UNAME, passwd=DB1_PASS, port=portl) 
    if db1.open:  # local dB
        cursor1 = db1.cursor()
except pymysql.Error as error:  # mysql error handling 
        print('MySQL error: %s' % (' '.join(error.args)))
try:
    cursor1.execute("USE {Database}".format(Database=DB_NAME))  # 
    print("Database {} connected successfully.".format(DB_NAME))
except pymysql.Error as err:  # mysql error handling 
    if err.errno == errorcode.ER_BAD_DB_ERROR:
        print('Database {} does not exists.'.format(DB_NAME))
    else:
        print(err)
        exit(1)



cursor1.close()
db1.close()
print('ok')

read_group = 'amdocs_vpn' # group in .ini file
cfg.read(read_file) 
DB_UNAME = _config("user")  # info for sqlalchemy engine 
# DB_PASS='1%]LYrI81iG3'
# DB_PASS='welcome123'
DB_PASS = _config("password")
SSH_HOST = _config("host")
DB_Remote = _config("database")
portr = int(_config("port", 3306))
# charset = _config("charset", "utf8mb4")
# SSH_HOST='190.191.229.146'
SSH_PASS=DB_PASS
SSH_UNAME=DB_UNAME
# DB_HOST='127.0.0.1'
# DB_UNAME='nqi_importer'
# DB_PASS='1%]LYrI81iG3'
# DB_Remote="managed_objects"
# DB1_UNAME='am_no'
# DB1_PASS='Py@p4Opt'
# DB_NAME = 'netparam'
# tunnel = SSHTunnelForwarder((SSH_HOST, portr), ssh_password=SSH_PASS, ssh_username=SSH_UNAME,
#      remote_bind_address=(DB_HOST, portl)) 
# tunnel.start()  # tunnel to remote connection
try:
    # db1 = pymysql.connect(user=DB1_UNAME,password=DB1_PASS,host=DB_HOST)
    db1 = pymysql.connect(host=DB_HOST, user=DB1_UNAME, passwd=DB1_PASS, port=portl) 
    if db1.open:  # local dB
        cursor1 = db1.cursor()
except pymysql.Error as error:  # mysql error handling 
        print('MySQL error: %s' % (' '.join(error.args)))
try:
    # db = pymysql.connect(host=SSH_HOST, user=DB_UNAME, passwd=DB_PASS, port=portl)
    db = mysql.connect(user=DB_UNAME,password=DB_PASS,host=SSH_HOST,port='3306')
    if db.is_connected():  # remote dB
        cursor = db.cursor()
except mysql.Error as error:  # mysql error handling 
    print('MySQL error: ')


# except pymysql.Error as error:  # mysql error handling 
#         print('MySQL error: %s' % (' '.join(error.args)))
for tabcs in tabcsv:  # table sql creation
    cursor.execute("SHOW CREATE TABLE {dBase}.{tabname}".format(dBase=DB_Remote,tabname=tabcs.lower()))
    temporal = list(cursor.fetchall())
    TABLES[temporal[0][0]] = temporal[0][1]  # dict table: sql creation
try:
    cursor1.execute("USE {Database}".format(Database=DB_NAME))  # 
    print("Database {} connected successfully.".format(DB_NAME))
except pymysql.Error as err:  # mysql error handling 
    if err.errno == errorcode.ER_BAD_DB_ERROR:
        print('Database {} does not exists.'.format(DB_NAME))
    else:
        print(err)
        exit(1)
for tabcs in tabcsv:  # tgt Db table cleaning   
    cursor1.execute("DROP TABLE IF EXISTS {tabname}".format(tabname=tabcs.lower()))
for table_name in TABLES:
    table_description = TABLES[table_name]
    try:
        print("Creating table {}".format(table_name))
        cursor1.execute(table_description)
    except pymysql.Error as err:  # mysql error handling 
        if err.errno == errorcode.ER_TABLE_EXISTS_ERROR:
            print('Already exists')
        else:
            print(err.msg)
cursor.execute("USE {}".format(DB_Remote))
for tabcs in tabcsv:  # tgt Db table data retrieving  
    print("Reading table {}".format(tabcs.lower()))
    cursor.execute("Select * from {dBase}.{tabname}".format(dBase=DB_Remote,tabname=tabcs.lower()))
    desc = cursor.description
    column_names = [col[0] for col in desc]
    columnsf = ','.join(column_names)
    myDictl = [dict(zip(column_names, row))  
            for row in cursor]
    # change the myDictl list table info from Dictionary to Tuple type
    # use the dict.values() of each inner dict. The values() will be in key (==input) order as well
    tupt= [tuple(d.values()) for d in myDictl]
    placeholder = ', '.join(['%s'] * len(column_names))
    stmt = "insert into `{tabname}` ({columns}) values ({values})".format(tabname=tabcs.lower(), columns=columnsf, values=placeholder)
    print("Populating table {}".format(tabcs.lower()))
    cursor1.executemany(stmt, tupt)
db1.commit()
cursor1.close()
db1.close()
cursor.close()
db.close()
print('ok')
# revisar mysql connector con nuevos settings de timers read write