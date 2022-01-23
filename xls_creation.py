import mysql.connector as mysql
import os
from pathlib import Path
import pandas as pd
from pyexcelerate import Workbook
from datetime import date
from configparser import ConfigParser
from sqlalchemy import create_engine
import csv
import py7zr


def _config(key, arg=None):
    try:
        return cfg.get(read_default_group, key)
    except Exception:
        return arg

def amleprsqlconcat(tabs1, conn2):
    dfconcat = pd.DataFrame()
    for i in tabs1:
        try:
            df = pd.read_sql_query("select * from " + i + ";", con=conn2)  # pandas dataframe from sqlite
            dfconcat = dfconcat.append(df, ignore_index=True)
        except mysql.Error as error:  # mysql error handling 
            print('MySQL error: %s' % (' '.join(error.args)))
    data = [dfconcat.columns.tolist()] + dfconcat.values.tolist()  # dataframe to list to pyexcelerate save
    return data

def sqlcsvexport(conn1, tabs1, databm):
    today = date.today()
    csv_path = databm.parent / 'csv'  # xls file path-name
    for i in tabs1:
        print('saving file {iterar}'.format (iterar=i))
        try:
            df = pd.read_sql_query("select * from " + i + ";", con=conn1)  # pandas dataframe from sqlite
            df.to_csv(str(csv_path) + '/' + i + '_' + today.strftime("%y%m%d") + ".csv", index=False, chunksize=10000)
        except mysql.Error as error:  # mysql error handling 
            print('MySQL error: %s' % (' '.join(error.args)))
    return    


def sqltabexport(conn1, tabs1, filenam, databm):
    today = date.today()
    xls_file = filenam + '_' + today.strftime("%y%m%d") + ".xlsx"
    xls_path = databm.parent / 'xlsx' / xls_file  # xls file path-name
    wb = Workbook()
    for i in tabs1:
        try:
            df = pd.read_sql_query("select * from " + i + ";", con=conn1)  # pandas dataframe from sqlite
            data = [df.columns.tolist()] + df.values.tolist()  # dataframe to list to pyexcelerate save
            wb.new_sheet(i, data=data)
        except mysql.Error as error:  # mysql error handling 
            print('MySQL error: %s' % (' '.join(error.args)))
    wb.save(xls_path)
    return

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
            dbtgt = Path('C:/mysql/xlsx')
            proc = [3]
            # proc = [1, 2, 3, 4, 5]
            # cont = sqlite3.connect(dbtgt)  # database connection for all iterations
            # cur = cont.cursor()
            for iter1 in proc:
                print('populating file {iterar}'.format (iterar=iter1))
                if iter1 == 1:
                    tabs = ['LNREL_PART_NOCOLOC', 'LNREL_PART_NOCOSCTR', 'LNREL_PART_NOCOSITE',
                            'LNREL_PART_UNDFND', 'LNMME_Miss', 'PCI_DistF1', 'RSI_DistF1']
                    filen = 'Mob_Audit'
                    sqltabexport(my_conn, tabs, filen, dbtgt)
                elif iter1 == 2:
                    tabs = ['NRBTS_Full', 'NRCELL_Full', 'LTE_Param', 'WCEL_PARAM1',
                            'BTS_PARAM']
                    filen = 'NET_Params'
                    sqltabexport(my_conn, tabs, filen, dbtgt)
                elif iter1 == 3:
                    tabs = ['T031_PAR_LNREL_RA', 'T031_PAR_LNREL_ER9', 'T031_PAR_LNREL_ER1', 'T031_PAR_LNREL_ER2',
                            'T031_PAR_LNREL_ER7', 'T031_PAR_LNREL_ER8', 'T031_PAR_LNREL_ER10']
                    sqlcsvexport(my_conn, tabs, dbtgt)
                    # with py7zr.SevenZipFile("Archive.7z", 'w') as archive:
                    #     archive.writeall("target/")
                elif iter1 == 4:
                    tabs = ['IRFIM_Miss', 'AMLEPR_MISS', 'LNHOIF_Miss', 'LNREL_COS_MISS', 'ADJL_DISC', 'ADJL_AUD9560', 'ADJL_AUD9560G',
                            'ADJL_AUD626', 'ADJL_AUD626G', 'ADJL_AUD651', 'ADJL_AUD651G', 'ADJL_AUD3075', 'ADJL_AUD3075G',
                            'ADJL_AUD3225', 'ADJL_AUD3225G']
                    filen = 'IRFIM_ADJL_Missing'
                    sqltabexport(my_conn, tabs, filen, dbtgt)
                elif iter1 == 5:
                    filet = 'LTE2051_1841_Disc'
                    today = date.today()
                    xls_file = filet + '_' + today.strftime("%y%m%d") + ".xlsx"
                    xls_path = dbtgt.parent / 'xlsx' /xls_file  # xls file path-name
                    wb = Workbook()
                    tabs = ['IRFIM_626AUD', 'IRFIM_651AUD', 'IRFIM_9560AUD', 'IRFIM32253075AUD', 'IRFIM30753225AUD',
                            'IRFIM_3075AUD', 'IRFIM_3225AUD']
                    filen = 'IRFIM_DISC'
                    data1 = amleprsqlconcat(tabs, my_conn)
                    wb.new_sheet(filen, data=data1)
                    tabs = ['LNHOIF_3075_3225', 'LNHOIF_3075_651', 'LNHOIF_3075_626', 'LNHOIF_3075_9560', 'LNHOIF_3225_3075',
                            'LNHOIF_3225_651', 'LNHOIF_3225_626', 'LNHOIF_3225_9560', 'LNHOIF_651_3075', 'LNHOIF_651_3225',
                            'LNHOIF_651_626', 'LNHOIF_651_9560', 'LNHOIF_626_3075', 'LNHOIF_626_3225', ' LNHOIF_626_651',
                            'LNHOIF_626_9560', 'LNHOIF_9560_3075', 'LNHOIF_9560_3225', 'LNHOIF_9560_651', 'LNHOIF_9560_626']
                    filen = 'LNHOIF_DISC'
                    data1 = amleprsqlconcat(tabs, my_conn)
                    wb.new_sheet(filen, data=data1)
                    tabs = ['AMLEPR_3075_3225', 'AMLEPR_3075_651', 'AMLEPR_3075_626', 'AMLEPR_3075_9560', 'AMLEPR_3225_3075',
                            'AMLEPR_3225_651', 'AMLEPR_3225_626', 'AMLEPR_3225_9560', 'AMLEPR_651_3075', 'AMLEPR_651_3225',
                            'AMLEPR_651_626', 'AMLEPR_651_9560', 'AMLEPR_626_3075', 'AMLEPR_626_3225', ' AMLEPR_626_651',
                            'AMLEPR_626_9560', 'AMLEPR_9560_3075', 'AMLEPR_9560_3225', 'AMLEPR_9560_651', 'AMLEPR_9560_626']
                    filen = 'AMLEPR_DISC'
                    data1 = amleprsqlconcat(tabs, my_conn)
                    wb.new_sheet(filen, data=data1)
                    tabs = ['LNCEL_IDCONGEN_15_20', 'LNCEL_IDCONGEN_10', 'LNCEL_IDCONGEN_5']  # next audit
                    filen = 'LNCEL_IDCONGEN'
                    data1 = amleprsqlconcat(tabs, my_conn)
                    wb.new_sheet(filen, data=data1)
                    tabs = ['LNCEL_AUD1841_15_20', 'LNCEL_AUD1841_10', 'LNCEL_AUD1841_5']  # next audit
                    filen = 'LNCEL_2051_1841'
                    data1 = amleprsqlconcat(tabs, my_conn)
                    wb.new_sheet(filen, data=data1)
                    tabs = ['LNBTS_AUD2051']
                    filen = 'WBTS_DISC'
                    data1 = amleprsqlconcat(tabs, my_conn)
                    wb.new_sheet(filen, data=data1)
                    wb.save(xls_path)
                elif iter1 == 6:
                    tabs = ['T031_PAR_LNRELT']
                    filen = '031_LNREL'
                    sqltabexport(my_conn, tabs, filen, dbtgt)
                elif iter1 == 7:
                    tabs = ['LNCEL_Full', 'IRFIM_ref']
                    filen = 'IRFIM'
                    sqltabexport(my_conn, tabs, filen, dbtgt)
                elif iter1 == 8:
                    tabs = ['MISS3', 'ADJS_Add', 'ADJS_Dep']
                    filen = 'ADJS_OPT'
                    sqltabexport(my_conn, tabs, filen, dbtgt)
                elif iter1 == 9:
                    tabs = ['T031_LNREL_ATL', 'T031_LNREL_BOL', 'T031_LNREL_MGC', 'T031_LNREL_SC', 'T031_LNREL_OTHER']
                    filen = 'T031_LNREL_RC10'
                    sqltabexport(my_conn, tabs, filen, dbtgt)
                elif iter1 == 10:  # different 031 processed
                    tabs = ['T031_PAR_LNRELS']
                    filen = 'T031_LNREL_RCx'
                    sqltabexport(my_conn, tabs, filen, dbtgt)
            # cur.close()
            # cont.close()
            # sqlcsvimpNAct(my_conn, cur, '031', 'rslte031')
            # sqlcsvimport(my_conn, cur, 'baseline', 'sitios')
            # sqlcsvimport(my_conn, cur, 'baseline_lte', 'lte')
            # sqlcsvimport(my_conn, cur, 'baseline_umts', 'umts')
            # sqlcsvimport(my_conn, cur, 'baseline_gsm', 'gsm')
        except mysql.Error as error:  # mysql error handling 
            print('MySQL error: %s' % (' '.join(error.args)))
except mysql.Error as error:  # mysql error handling 
    print('MySQL error: %s' % (' '.join(error.args)))
print('OK')
cur.close()
db1.close()
