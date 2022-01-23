import mysql.connector as mysql
import os
from pathlib import Path
import pandas as pd
from datetime import date
from sqlalchemy import create_engine
from configparser import ConfigParser


def _config(key, arg=None):
    try:
        return cfg.get(read_group, key)
    except Exception:
        return arg


read_file = "/mysql/my11.ini" # replace this with the path you want to use
cfg = ConfigParser()
read_group = 'connector_python' # group in .ini file
cfg.read(read_file) 
DB1_UNAME = _config("user")  # info for sqlalchemy engine 
DB1_PASS = _config("password")
DB_HOST = _config("host")
DB_NAME = _config("database")
portl = int(_config("port", 3306))
charset = _config("charset", "utf8mb4")


try:
    db = mysql.connect(user=DB1_UNAME,password=DB1_PASS,host=DB_HOST)
    if db.is_connected():
        print(__file__ + " - single config file:")
        print("MySQL connection ID for db: {0}".format(db.connection_id))
        ## creating an instance of 'cursor' class used to execute the 'SQL' statements
        cursor = db.cursor()
        # creating a databse called 'NetParam'
        # 'execute()' method is used to compile a 'SQL' statement.
        cursor.execute("DROP DATABASE IF EXISTS netparam")
        cursor.execute("CREATE DATABASE netparam")
        cursor.execute("SHOW DATABASES")
        # 'fetchall()' method fetches all the rows from the last executed statement
        databases = cursor.fetchall() ## it returns a list of all databases present
        # showing one by one database
        for database in databases:
            print(database)
except mysql.Error as error:  # mysql error handling 
        print('MySQL error: %s' % (' '.join(error.args)))
print('OK')
cursor.close()
db.close()
