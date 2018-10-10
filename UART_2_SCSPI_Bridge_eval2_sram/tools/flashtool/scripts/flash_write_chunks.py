#!/usr/bin/python
# Python script for PolarFire UART-2-SPI Design
#
# Sends file to PolarFire Mi-V CPU for SPI Flash write
#
# Example: python xmodem_send.py com5 <start-address> ../init_data/test2048Bytes.bin
#
# 2018-08-07 MSCC, CRU
#
# enter transfer size in bytes (has to match value in Mi-V Code)
TRANSFER_CHUNK_SIZE = 4096

import serial, sys, os, io
from xmodem import XMODEM
from time import sleep

def getc(size, timeout=1):
  return ser.read(size)
def putc(data, timeout=1):
  return ser.write(data)

def get_chunks(file_size):
    chunk_start = 0
    chunk_size = TRANSFER_CHUNK_SIZE
    while chunk_start + chunk_size < file_size:
        yield(chunk_start, chunk_size)
        chunk_start += chunk_size

    final_chunk_size = file_size - chunk_start
    yield(chunk_start, final_chunk_size)

print("\nPolarFire UART-2-SPI - SPI FLASH WRITE")

if (len(sys.argv) > 3):

  com_port = str(sys.argv[1])
  
  ser = serial.Serial(com_port, 115200, bytesize=8, parity='N', stopbits=1, timeout=1, xonxoff=0, rtscts=0)
#  ser = serial.Serial(com_port, 230400, bytesize=8, parity='N', stopbits=1, timeout=1, xonxoff=0, rtscts=0)

  # xmodem object 
  modem = XMODEM(getc, putc)

  if ser.isOpen():
    print('Serial Port:' + ser.name + ' is open...')

    start_offset = int(sys.argv[2],16)
    print('Start-Address for Flash Write: {0:#0{1}x}'.format(start_offset, 8))

    with open(sys.argv[3], "rb") as file_:
      file_size = os.path.getsize(sys.argv[3])
      print('Input File size: {} bytes'.format(file_size))

      # flush receive buffer (required)
      ser.flushInput()

      # send "write SPI Flash" command <w>
      ser.write(b'w')
      # send filesize in bytes as 4 bytes (big endian)
      ser.write(file_size.to_bytes(4, byteorder='big'))
      # send start address in bytes as 4 bytes (big endian)
      ser.write(start_offset.to_bytes(4, byteorder='big'))
      ser.flushOutput() # to make sure that TX buffer gets send
      sleep(1)

      progress = 0
      for chunk_start, chunk_size in get_chunks(file_size):
        file_chunk = file_.read(TRANSFER_CHUNK_SIZE)
            
        # do something with the chunk, encrypt it, write to another file...
        retval = modem.send(io.BytesIO(file_chunk))
        if (retval != None):
          progress += len(file_chunk)
          print('{0} of {1} bytes read ({2}%) - writing to SPI Flash'.format(progress, file_size, int(progress / file_size * 100)))

  file_.close()
  ser.close()