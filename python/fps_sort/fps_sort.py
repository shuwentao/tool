#!/usr/bin/python3
import sys

dict = {} 

with open(sys.argv[1],'r') as f_name:
    with open(sys.argv[2],'r') as f_fps:
      line_name = f_name.readline()  
      line_fps = f_fps.readline()
      while(line_name):
        dict[line_name.strip().strip("./")] = line_fps.strip()
#        print(line_name)
#        print(line_fps)
        line_name = f_name.readline()  
        line_fps = f_fps.readline()
        

#print(dict.items())
#print(str(dict))

for key in dict:
  print(key + ' ' + dict[key])

        
      
