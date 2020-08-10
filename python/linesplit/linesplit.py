#!/usr/bin/python3
import sys


#i = 0;
#with open(sys.argv[1],'r') as f:
#    with open(sys.argv[2],'w') as f1:
#        with open(sys.argv[3],'w') as f2:
#            line = f.readline()
#            while(line):
#                if i % 2 == 0 :
#                    f1.write(line)
#                    #print("==== 0 =====")
#                else :
#                    f2.write(line)
#                    #print("==== 1 ====="
#                line = f.readline()
#                i = i + 1


i = 0
with open(sys.argv[1],'w') as f1:
    with open(sys.argv[2],'w') as f2:
        line = sys.stdin.readline()
        while(line):
            if i % 2 == 0 :
                f1.write(line)
                #print("==== 0 =====")
            else :
                f2.write(line)
                #print("==== 1 ====="
            line = sys.stdin.readline()
            i = i + 1

        





