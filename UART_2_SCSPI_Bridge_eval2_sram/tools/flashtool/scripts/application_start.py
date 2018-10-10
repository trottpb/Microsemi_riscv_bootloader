#!/usr/bin/python
# Python script for PolarFire UART-2-SPI Design
#
# Request Mi-V CPU to read SPI ID regiister
#
# Example: python SPI_ReadID.py com5
#
# 2018-08-07 MSCC, CRU
#
# enter transfer size in bytes (has to match value in Mi-V Code)
TRANSFER_CHUNK_SIZE = 4096

import serial, sys
from time import sleep

print("\nPolarFire UART-2-SPI - SPI FLASH IDENTIFICATION")

if (len(sys.argv) > 1):

  com_port = str(sys.argv[1])
  
  ser = serial.Serial(com_port, 115200, bytesize=8, parity='N', stopbits=1, timeout=1, xonxoff=0, rtscts=0)
  
  if ser.isOpen():
    print('Serial Port:' + ser.name + ' is open...')
    
    # flush receive buffer (required)
    ser.flushInput()

    # send "read Device Identification" command <i>
    ser.write(b'a')
    ser.flushOutput() # to make sure that TX buffer gets send
    sleep(1)
    print('Application should be loaded and LED blinking')
    
  ser.close()