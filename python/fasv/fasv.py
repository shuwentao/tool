#!/usr/bin/python3
"""
This tool use for finding all struct variables in code
"""
import sys
import re



struct_name = "MD2AEC_DATA_ARRAY"
str_pattern = r"(" + struct_name + "((\.|->)\w+)+)"
#pattern = re.compile(r'(MD2AEC_DATA_ARRAY((\.|->)\w+)+)') 
print(str_pattern)
pattern = re.compile(str_pattern) 

with open(sys.argv[1],"r",encoding="gbk") as f:
    line = f.readline()
    while(line):
        results = pattern.findall(line)
        if results:
            for result in results:
                print(result[0])
        line = f.readline()
