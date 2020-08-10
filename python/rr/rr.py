#!/usr/bin/python3
"""
remove repetition in file 
"""

import sys


#get variables list

li = []
with open(sys.argv[1],"r") as f:
    line = f.readline()
    while(line):
        li.append(line)
        line = f.readline()

#remove the repetition

newli=list(set(li))
newli.sort()
for i in newli:
  print(i,end="")
