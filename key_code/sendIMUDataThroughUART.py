## Copyright (c) 2018 Jason(Yangjie) Liu. All rights reserved.

#!/usr/bin/python
import serial
import struct
import time
import sys

infile_path = "/dev/input/event0"
mag_path = "/dev/input/event2"

#long int, long int, unsigned short, unsigned short, unsigned int
FORMAT = 'llHHl'
EVENT_SIZE = struct.calcsize(FORMAT)

#open file in binary mode
in_file = open(infile_path, "rb")
in_even = open(mag_path, "rb")

event = in_file.read(EVENT_SIZE)
#data = in_even.read(EVENT_SIZE)

while event:
    (tv_sec, tv_usec, type, code, value) = struct.unpack(FORMAT, event)
    data = in_even.read(EVENT_SIZE)
    (_, _, _, _, data1) = struct.unpack(FORMAT, data)
    data = in_even.read(EVENT_SIZE)
    (_, _, _, _, data2) = struct.unpack(FORMAT, data)
    data = in_even.read(EVENT_SIZE)
    (_, _, _, _, data3) = struct.unpack(FORMAT, data)

    if value != 0:
        #ser = serial.Serial("/dev/ttyACM0")  # open first serial port
        #print ser.portstr       # check which port was really used
        #ser.write("-")      # write a string
        #ser.close()             # close port
        ser = serial.Serial(
            port='/dev/ttyACM0',
            baudrate=115200,
            stopbits=serial.STOPBITS_ONE,
            bytesize=serial.EIGHTBITS
        )
        print(data1)
        print(data2)
        print(data3)
        ser.isOpen()
        ser.write('-\n')
        str = '-'
        for _ in range (0, 4):
            #ser.write(data1 & 0xff)
            str += chr(data1 & 0xff)
            #print(data1&0xff)
            data1 = data1 >> 8
            #print(data2&0xff)
            #ser.write(data2 & 0xff)
            str += chr(data2 & 0xff)
            data2 = data2 >> 8
            #print(data3&0xff)
            #ser.write(data3 & 0xff)
            str += chr(data3 & 0xff)
            data3 = data3 >> 8
        str += '\n'
        ser.write(str)
        print("done")
    ser.close()
    event = in_file.read(EVENT_SIZE)
    data = in_even.read(EVENT_SIZE)

in_file.close()
in_even.close()
