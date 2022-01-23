import mysql.connector as mysql
import os
from pathlib import Path
import pandas as pd
from pyexcelerate import Workbook
from datetime import date
from configparser import ConfigParser
from sqlalchemy import create_engine
import csv


def _config(key, arg=None):
    try:
        return cfg.get(read_default_group, key)
    except Exception:
        return arg


def sqlcsvimport(con1, c, tipo, tec):  # cursor from tgt db
    c.execute("DROP TABLE IF EXISTS " + tipo)
    try:  # import baseline csv to sqlite by 10000 rows batch
        xlspath = Path('C:/xml/baseline/')  # baseline csv directory
        print('bl{tecno} importing'.format(tecno=tec))
        base = pd.read_csv(xlspath / Path('bl' + tec + '.csv'), encoding='latin-1')
        # Insert whole DataFrame into MySQL
        base.to_sql(name=tipo, con = con1, if_exists = 'append', index=False, chunksize = 5000)
    except mysql.Error as error:  # mysql error handling 
        print('MySQL error: %s' % (' '.join(error.args)))
    return    

def sqlcsvimpNAct(con1, c, loc, tipo):  # cursor from tgt db
    c.execute("DROP TABLE IF EXISTS " + tipo)
    try:  # import report LTE031 csv to sqlite by 10000 rows batch
        xlspath = Path('C:/xml/baseline/' + loc + '/')  # 031 csv directory
        for baself in xlspath.glob('*.csv'):  # file iteration inside directory
            print('{file031} importing'.format(file031=baself))
            with open(baself, 'r') as infile:
                reader = csv.DictReader(infile)
                fieldnames = reader.fieldnames    
                fields = fieldnames[0].split(';')
                fieldlen = len(fields)
                if fieldlen == 30:
                    fields[23]='Number of Inter eNB Handover atts'
                    fields[26]='Number of inter-frequency load balancing handover atts'
                else:
                    fields[21]='Number of Inter eNB Handover atts'
                    fields[24]='Number of inter-frequency load balancing handover atts'    
            tempo = pd.read_csv(baself, sep=';', chunksize=50000, header=0, names=fields) 
            for chunk in tempo:
                # chunk.to_sql(tipo, conn, if_exists='append', index=False, chunksize=10000)
                chunk.to_sql(name=tipo, con = con1, if_exists = 'append', index=False, chunksize = 10000)
    except mysql.Error as error:  # mysql error handling 
        print('MySQL error: %s' % (' '.join(error.args)))
    return


read_default_group = 'connector_python' # group in .ini file
read_default_file = "/mysql/my11.ini" # replace this with the path you want to use
cfg = ConfigParser()
cfg.read(read_default_file) 
userd = _config("user")  # info for sqlalchemy engine 
passd = _config("password")
host = _config("host")
datab = _config("database")
port = int(_config("port", 3306))
charset = _config("charset", "utf8mb4")
try:
    db1 = mysql.connect(option_files="C:/mysql/my11.ini")
    if db1.is_connected():
        print(__file__ + " - single config file:")
        print("MySQL connection ID for db: {0}".format(db1.connection_id))
        cur = db1.cursor()
        try:
            cur.execute("USE {Database}".format(Database=datab))  # 
            print("Database {} connected successfully.".format(datab))
            # create sqlalchemy engine
            my_conn = create_engine("mysql+mysqlconnector://{user}:{pw}@localhost/{db}"
                       .format(user=userd, pw=passd, db=datab))
            sqlcsvimpNAct(my_conn, cur, '031', 'rslte031')
            sqlcsvimport(my_conn, cur, 'baseline', 'sitios')
            sqlcsvimport(my_conn, cur, 'baseline_lte', 'lte')
            sqlcsvimport(my_conn, cur, 'baseline_umts', 'umts')
            sqlcsvimport(my_conn, cur, 'baseline_gsm', 'gsm')
        except mysql.Error as error:  # mysql error handling 
            print('MySQL error: %s' % (' '.join(error.args)))
except mysql.Error as error:  # mysql error handling 
    print('MySQL error: %s' % (' '.join(error.args)))
print('OK')
cur.close()
db1.close()
