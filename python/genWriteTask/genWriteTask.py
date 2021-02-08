#!/usr/bin/python3

import sys
import re
import os

#stuct variables
#var_type = 32
#var_name = "coef_array"
#var_addr_width = 8
#var_data_width = 32
#var_depth = 256

  
def genVlogWriteTask(var_name,var_addr_width,var_data_width,var_depth,num):
  if num == 0 :
    print("extern void write_%s_Mem(int * mem);" % (var_name));
  elif num == 1 :
    print("export \"DPI-C\" task write_%s_Mem;" % (var_name))
  elif num == 2 :
    print(" wire [%d:0] %s_addr;" % (var_addr_width-1,var_name));
    print(" wire        %s_ce;" % (var_name));
    print(" wire [%d:0] %s_dout;" % (var_data_width-1,var_name));
  elif num == 3 :
    print("sim_sram #(");
    print(" .ADDR_WITDH(%d)," % (var_addr_width))
    print(" .DATA_WITDH(%d)," % (var_data_width))
    print(" .RAM_DEPTH (%d))" % (var_depth))
    print("%s (" % (var_name))
    print(" .clk(clk),");
    print(" .addr(%s_addr)," % (var_name));
    print(" .ce  (%s_ce)," % (var_name));
    print(" .dout(%s_dout)" % (var_name));
    print(");")
  elif num == 4 :
    print("task write_%s_Mem(inout int mem[%d]);" % (var_name,var_depth))
    print("  begin")
    print("    integer i;")
    print("    for(i = 0 ; i < %d ; i = i + 1) " % (var_depth))
    print("      begin")
    print("        %s.mem[i] = mem[i];" % (var_name))
    print("      end")
    print("  end")
    print("endtask")
  elif num == 5 :
    print("write_%s_Mem(%s);" % (var_name,var_name));

def genVlogReadTask():
  print("I am genVlogReadTask")

def main():
  with open(sys.argv[1],'r') as f:
    line = f.readline()
    while(line):
      line=line.split();
      var_name=line[0];
      var_addr_width=int(line[1]);
      var_data_width=int(line[2]);
      var_depth=int(line[3]);
      genVlogWriteTask(var_name,var_addr_width,var_data_width,var_depth,int(sys.argv[2]))
      line=f.readline()

if __name__ == '__main__':
  main()
