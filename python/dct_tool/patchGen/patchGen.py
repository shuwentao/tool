#!/usr/bin/python3

import numpy as np
import sys
import os


file_in = open(sys.argv[1],"r");
picWidth = int(sys.argv[2])
picHight = int(sys.argv[3])
patchWidth = int(sys.argv[4])
patchHight = int(sys.argv[5])
stride = int(sys.argv[6])
file_out = open(sys.argv[7],"w")

data=[]
for line in file_in :
    line = line.strip()
    data.append(int(line,16))



for row in range(0,picHight-6,stride):
    for col in range(0,picWidth):
        for j in range(0,patchHight):
            #print("%x " % data[row * picWidth + col + j * picWidth + i],end="")
            file_out.write("%04x " % data[row * picWidth + (patchHight - 1 - j) * picWidth + col])
        file_out.write("\n")
