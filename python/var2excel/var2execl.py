#!/usr/bin/python3
import openpyxl
import sys

wb = openpyxl.Workbook()
wb.create_sheet('test_case')
#wb.save('cases.xlsx')
#wb = openpyxl.load_workbook('cases.xlsx')

#sh = wb['test_case']
sheet = wb.active
#sheet.sheet_properties.tabColor="1072BA"
i = 0
with open(sys.argv[1],"r") as f:
    line = f.readline()
    while(line):
        print(line,end="")
        sheet["A%d" % (i+1)].value = line
        i=i+1
        line = f.readline()


wb.save('cases.xlsx')
wb.close()
