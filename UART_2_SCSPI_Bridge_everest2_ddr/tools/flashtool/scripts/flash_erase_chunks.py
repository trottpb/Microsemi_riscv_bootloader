#!/usr/bin/python
# Python script for PolarFire UART-2-SPI Design
#
# Request Mi-V CPU to read SPI ID regiister
#
# Example: python SPI_ReadID.py com5 <startaddress> <chunks>
#
# 2018-08-07 MSCC, CRU
#
# enter transfer size in bytes (has to match value in Mi-V Code)
#
TRANSFER_CHUNK_SIZE = 4096

import serial, sys
from time import sleep

print("\nPolarFire UART-2-SPI - SPI FLASH ERASE")

if (len(sys.argv) > 2):

  com_port = str(sys.argv[1])
  
  ser = serial.Serial(com_port, 115200, bytesize=8, parity='N', stopbits=1, timeout=1, xonxoff=0, rtscts=0)
  
  if ser.isOpen():
    print('Serial Port:' + ser.name + ' is open...')
    
    start_offset = int(sys.argv[2],16)
    n_chunks = int(sys.argv[3])
    padded_size = n_chunks * TRANSFER_CHUNK_SIZE

    print('Start-Address for Flash Erase: {0:#0{1}x}'.format(start_offset, 8))
    print('Erase {0} chunks of {1} bytes: total {2} bytes'.format(n_chunks, TRANSFER_CHUNK_SIZE, padded_size))

    # flush receive buffer (required)
    ser.flushInput()

    # send "Erase Device" command <e>
    ser.write(b'e')
    # send number of chunks to erase as 4 bytes (big endian)
    ser.write(n_chunks.to_bytes(4, byteorder='big'))
    # send start address in bytes as 4 bytes (big endian)
    ser.write(start_offset.to_bytes(4, byteorder='big'))
    ser.flushOutput() # to make sure that TX buffer gets send
    sleep(1)
#    manufacturer_id = int.from_bytes(ser.read(1), byteorder='little' )
#    device_id = int.from_bytes(ser.read(1), byteorder='little' )
#    device_capacity = int.from_bytes(ser.read(1), byteorder='little' )
#    print('Manufacturer-ID: {0:#0{1}x}'.format(manufacturer_id, 2))
#    print('Device-ID: {0:#0{1}x}'.format(device_id, 2))
#    print('Device-Capacity: {0:#0{1}x}'.format(device_capacity, 2))
    
  ser.close()