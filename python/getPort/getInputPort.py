#!/usr/bin/python3

import sys
import re

str_pattern = r"(input)( +\[(\d+):(\d+)\])? +(\w+),?"

with open(sys.argv[1],"r") as f:
  line = f.readline()
  while(line):
    result = re.match(str_pattern,line)
    if result:
        print(result.group(0))
    line = f.readline()

