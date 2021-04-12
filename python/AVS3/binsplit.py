#!/usr/bin/python3

import sys
import re

#-i *.yuv
#-w width
#-h height
#-z f_value
#-p rate
#-f frame_num
#-d 
#-q qp
#--internal_bit_depth 

SEQUENCE_PATH = line[0]
CASE_NAME = line[1]
PIC_WITDH = line[2]
PIC_HEIGHT = line[3]
QP = line[4]
FRAME_NUM = line[5]
F_VALUE = 50


./app_encoder --config cfg/encode_IPPP.cfg -i ${SEQUENCE_PATH}/${S}.yuv -w ${w} -h ${h} -z ${f_value} -p 60 -f ${Framenumber} -d 8 -q ${qp} --internal_bit_depth 8 -o bin/test_${S}_${qp}.bin -r yuv/test_${S}_${qp}_rec.yuv > log/test_${S}_${qp}.txt

