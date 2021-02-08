#!/usr/bin/python3

import sys

def genFile(var_name):
  print("FILE * fp_%s == NULL;" % (var_name))
  print("if(fp_%s == NULL)" % (var_name))
  print("  fp_%s = fopen(\"%s.txt\",\"w\");" % (var_name,var_name))

def genVar(var_name):
  genFile("param")
  print("  fprintf(fp_%s,\"%%d\\n\",%s);" % ("param",var_name))

def genFor1(var_name,size_i):
  genFile(var_name)
  print("for(int i = 0 ; i < %d ; i ++)" % (size_i))
  print("{")
  print("  fprintf(fp_%s,\"%%d\\n\",%s[i]);" % (var_name,var_name))
  print("}")

def genFor2(var_name,size_j,size_i):
  genFile(var_name)
  print("for(int j = 0 ; j < %d ; j ++)" % (size_j));
  print("{")
  print("  for(int i = 0 ; i < %d ; i ++)" % (size_i))
  print("  {")
  print("    fprintf(fp_%s,\"%%d\\n\",%s[j][i]);" % (var_name,var_name))
  print("  }")
  print("}")

def genFor3(var_name,size_k,size_j,size_i):
  genFile(var_name)
  print("for(int k = 0 ; k < %d ; k ++)" % (size_k))
  print("{")
  print("  for(int j = 0 ; j < %d ; j ++)" % (size_j));
  print("  {")
  print("    for(int i = 0 ; i < %d ; i ++)" % (size_i))
  print("    {")
  print("      fprintf(fp_%s,\"%%d\\n\",%s[k][j][i]);" % (var_name,var_name))
  print("    }")
  print("  }")
  print("}")



def main():
  with open(sys.argv[1],'r') as f:
    line = f.readline()
    while(line):
      line = line.split()
      #print(len(line))
      if len(line) == 2:
        var_name = line[1]
        genVar(var_name)
      elif len(line) == 3 :
        var_name = line[1]
        var_size_i = int(line[2])
        genFor1(var_name,var_size_i)
      elif len(line) == 4 :
        var_name = line[1]
        var_size_j = int(line[2])
        var_size_i = int(line[3])
        genFor2(var_name,var_size_j,var_size_i)
      elif len(line) == 5 :
        var_name = line[1]
        var_size_k = int(line[2])
        var_size_j = int(line[3])
        var_size_i = int(line[4])
        genFor3(var_name,var_size_k,var_size_j,var_size_i)
      line = f.readline()

if __name__ == '__main__':
  main()
