#!/usr/bin/python3

import sys
import re

str_pattern = r"(\d+)x(\d+)";
#str_pattern = r"\d+x\d+";

line = sys.argv[1]

result = re.search(str_pattern,line)

#print(result.group(0))
print(result.group(1),end=' ')
print(result.group(2))



