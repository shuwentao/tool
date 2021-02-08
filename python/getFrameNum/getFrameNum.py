#!/usr/bin/python3
import sys

with open(sys.argv[1],'r') as f:
  line = f.readline()
  while(line):
    line=line.split();
    #print(line,end="")
    fileName=line[0];
    width=int(line[1]);
    height=int(line[2]);
    size=int(line[3]);
    #print("%s,%s,%s,%s" % (fileName,width,height,size));
    frameNum = size / 1.5 / width / height;
    print("%s = %f" % (fileName,frameNum));
    line = f.readline()
