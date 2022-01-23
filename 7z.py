import subprocess
""" a add, -t7z type of archive 7z, -mx=9 method of compression Ultra compressing
https://sevenzip.osdn.jp/chm/cmdline/index.htm"""

exe = "C:\\7za\\7za.exe"
source = "C:\\Mysql\\csv\\*.csv"
target = "C:\\Mysql\\csv\\031.7z"
subprocess.call(exe + " a -t7z \"" + target + "\" \"" + source + "\" -mx=9")