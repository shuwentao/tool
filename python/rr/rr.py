#!/usr/bin/python3
"""
"""

import sys


#get variables list

li = []
with open(sys.argv[1],"r") as f:
    line = f.readline()
    while(line):
        li.append(line)
        line = f.readline()

#print(li)

#remove the repetition

newli=list(set(li))

print(newli)
