#!/usr/bin/python3


import numpy as np
import sys
import os


#print(np.version.version)

file_in = open(sys.argv[1],"r");
folding = int(sys.argv[2])
upPadding = int(sys.argv[3])
downPadding = int(sys.argv[4])
leftPadding = int(sys.argv[5])
rightPadding = int(sys.argv[6])
file_out = open(sys.argv[7],"w")

data=[]

for line in file_in :
    line = line.strip()
    data.append(int(line,16))

#print(data)

arr1D = np.array(data)

arr2D = arr1D.reshape(folding,-1)

arr2D = np.pad(arr2D,((upPadding,downPadding),(leftPadding,rightPadding)),'edge')

#arr2D = np.array2string(arr2D)
#arr2D = arr2D.tostring()


arr1D = arr2D.reshape(1,-1)

#data = arr1D.tolist()

for row in arr1D:
    for data in row:
        file_out.write("%04x\n" % data)
        #print(data)
