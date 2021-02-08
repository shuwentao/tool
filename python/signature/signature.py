#!/usr/bin/python3

import sys
import os
import getopt

  #src dir
  #src_file_path=sys.argv[1]
  #dst dir
  #dst_file_path=sys.argv[2]

def remove_signature(src_file_path,dst_file_path):
#  for root,dirs,files in os.walk(src_file_path):
#    for f in files:
  cmd="xxd -ps "
  cmd=cmd+'/'+src_file_path
  cmd=cmd +' | tr -d "\n" | sed "s/000001b210.\{34\}ff//g" | xxd -r -ps > '
  cmd=cmd+dst_file_path
#xxd -ps file_name | tr -d "\n" | sed "s/000001b210.\{34\}ff//g" | xxd -r -ps 
  os.system(cmd)

def get_signature(src_file_path,dst_file_path):
  cmd = "xxd -ps "
  cmd = cmd+'/'+src_file_path
  cmd = cmd+' | tr -d "\n" | grep -o "000001b210.\{34\}ff" > '
  cmd = cmd+dst_file_path
#xxd -ps file_name | tr -d "\n" | grep -o "000001b210.\{34\}ff"
  os.system(cmd)

def remove_signatures(src_dir_path,dst_dir_path):
  for root,dirs,files in os.walk(src_dir_path):
    for f in files:
      src_file_path = root+'/'+f
      dst_file_path = dst_dir_path+'/'+f
      remove_signature(src_file_path,dst_file_path)

def get_signatures(src_dir_path,dst_dir_path):
  for root,dirs,files in os.walk(src_dir_path):
    for f in files:
      src_file_path = root+'/'+f
      dst_file_path = dst_dir_path+'/'+f
      get_signature(src_file_path,dst_file_path)

def main():
  opts,args=getopt.getopt(sys.argv[1:],"hm:i:o:v",["help","mode","input","output","version"])
  print(args)
  for opt_name,opt_value in opts:
    if opt_name in ('-h','-help'):
      print("[*] Help Info")
      sys.exit()
    if opt_name in ('-m','--mode'):
      print("[*] mode ")
      mode = opt_value 
    if opt_name in ('-v','--version'):
      print("[*] Version is 0.01")
      sys.exit()
    if opt_name in ('-i','--input'):
      print("[*] input file path")
      print("input value=",opt_value)
      input_arg = opt_value
    if opt_name in ('-o','--output'):
      print("[*] output file path")
      print("output value=",opt_value)
      output_arg = opt_value
      
  #src_file_path=sys.argv[1]
  #dst_file_path=sys.argv[2]
  #get_signature(src_file_path,dst_file_path)
  #remove_signatures(src_file_path,dst_file_path)
  #get_signatures(src_file_path,dst_file_path)

  if mode == 'remove' and os.path.isfile(input_arg) and os.path.isfile(output_arg) :
    print("remove_signature")
    remove_signature(input_arg,output_arg)
  elif mode == 'remove' and os.path.exists(input_arg) and os.path.exists(output_arg) :
    print("remove_signatures")
    remove_signatures(input_arg,output_arg)
  elif mode == 'get' and os.path.isfile(input_arg) and os.path.isfile(output_arg) :
    print("get_signature")
    get_signature(input_arg,output_arg)
  elif mode == 'get' and os.path.exists(input_arg) and os.path.exists(output_arg) :
    print("get_signatures")
    get_signatures(input_arg,output_arg)
  else :
    print("Do nothing...")
  
     

if __name__ == '__main__':
  main()

