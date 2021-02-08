#!/bin/bash

./genWriteTask.py port.txt 0 > port.h
./genWriteTask.py port.txt 5 >> port.h
./genWriteTask.py port.txt 1 > port.sv
./genWriteTask.py port.txt 2 >> port.sv
./genWriteTask.py port.txt 3 >> port.sv
./genWriteTask.py port.txt 4 >> port.sv


