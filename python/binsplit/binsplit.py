#!/usr/bin/python3

import sys
import re

def bin_print(method,symbol,model2,model1):
  print("1 %s %s %s %s 0 0 0 0 0 0 0 0 0 0 0 0" % (method,symbol,model2,model1))

with open(sys.argv[1],"r") as f:
  line = f.readline()
  while(line):
    line = line.split();
    num_i = int(line[0])
    if num_i > 0 :
      method_0 = line[1]
      symbol_0 = line[2]
      model2_t0 = line[3]
      model1_t0 = line[4]
      bin_print(method_0,symbol_0,model2_t0,model1_t0);
    if num_i > 1 :
      method_1 = line[5]
      symbol_1 = line[6]
      model2_t1 = line[7]
      model1_t1 = line[8]
      bin_print(method_1,symbol_1,model2_t1,model1_t1);
    if num_i > 2 :
      method_2 = line[9]
      symbol_2 = line[10]
      model2_t2 = line[11]
      model1_t2 = line[12]
      bin_print(method_2,symbol_2,model2_t2,model1_t2);
    if num_i > 3 :
      method_3 = line[13]
      symbol_3 = line[14]
      model2_t3 = line[15]
      model1_t3 = line[16]
      bin_print(method_3,symbol_3,model2_t3,model1_t3);

    line = f.readline()
