#!/usr/bin/python3

#this tool can split a pic by bayer phase

#param
#sys.argv[1] input file  
#sys.argv[2] pic width
#sys.argv[3] pic height
#sys.argv[4] output file 1
#sys.argv[5] output file 2
#sys.argv[6] output file 3
#sys.argv[7] output file 4

#example
#
#./bayerPicSplit.py vst_output.txt 3840 2160
#

import numpy as np
import sys
import os


#print(np.version.version)

file_in = open(sys.argv[1],"r");

picWidth = int(sys.argv[2])
picHeight = int(sys.argv[3])

#file_out1 = open("bayerPhase0.txt","w");
#file_out2 = open("bayerPhase1.txt","w");
#file_out3 = open("bayerPhase2.txt","w");
#file_out4 = open("bayerPhase3.txt","w");

file_out1 = open(sys.argv[4],"w");
file_out2 = open(sys.argv[5],"w");
file_out3 = open(sys.argv[6],"w");
file_out4 = open(sys.argv[7],"w");

data=[]

for line in file_in :
    line = line.strip()
    data.append(line)


for h in range(0,picHeight) :
    if h % 2 == 0 :
        for w in range(0,picWidth) :
            if w % 2 == 0 :
                file_out1.write(data[h * picWidth + w])
                file_out1.write("\n")
            else :
                file_out2.write(data[h * picWidth + w])
                file_out2.write("\n")
    else :
        for w in range(0,picWidth) :
            if w % 2 == 0 :
                file_out3.write(data[h * picWidth + w])
                file_out3.write("\n")
            else :
                file_out4.write(data[h * picWidth + w])
                file_out4.write("\n")


#print("split end")
        
    


