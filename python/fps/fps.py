#!/usr/bin/python

import sys
import re

def fps_print(frame_num,time,pic_width,pic_height):
  print(9800.0 / (64.0 * 64.0) * 60.0 / (float(time) / float(frame_num) / float(pic_width) / float(pic_height)))

def main():
  with open(sys.argv[1],"r") as f:
    time1 = 0
    line = f.readline()
    while(line):
      time0 = 0
      line = line.split();
      pic_width = int(line[0])
      pic_height = int(line[1])
      frame_num = int(line[2])
      time = int(line[3]);
      fps_print(frame_num,time,pic_width,pic_height)
      line = f.readline()

if __name__ == '__main__':
  main()
