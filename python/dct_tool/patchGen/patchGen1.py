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
    for col in range(0,picWidth-6,stride):
        for j in range(0,patchHight):
            for i in range(0,patchWidth):
                #print("%x " % data[row * picWidth + col + j * picWidth + i],end="")
                file_out.write("%04x\n" % data[row * picWidth + col + j * picWidth + i])
