#!/usr/bin/python
# Python script for PolarFire UART-2-SPI Design
#
# Receives SPI Flash readback file from PolarFire Mi-V CPU
#
# Example: python xmodem_receive.py com5 0x000000400 10 file.bin
#
# 10 chunks with 4096 bytes are read starting from address 0x400 and stored into output file.bin
#
# 2018-08-07 MSCC, CRU
#
# enter transfer size in bytes (has to match value in Mi-V Code)
TRANSFER_CHUNK_SIZE = 4096

import serial, sys, os, io
from xmodem import XMODEM
from time import sleep

storage_path_chunks = './file_chunks/'
storage_path_output = './file_output/'

def getc(size, timeout=1):
  return ser.read(size)
def putc(data, timeout=1):
  return ser.write(data)

print("\nPolarFire UART-2-SPI - SPI FLASH READ")

if (len(sys.argv) > 4):

  com_port = str(sys.argv[1])
  
  ser = serial.Serial(com_port, 115200, bytesize=8, parity='N', stopbits=1, timeout=1, xonxoff=0, rtscts=0)
  # xmodem object 
  modem = XMODEM(getc, putc)

  if ser.isOpen():
    print('Serial Port:' + ser.name + ' is open...')

    start_offset = int(sys.argv[2],16)
    print('Start-Address for Flash Read: {0:#0{1}x}'.format(start_offset, 8))

    n_chunks = int(sys.argv[3])
    padded_xfilesize = n_chunks * TRANSFER_CHUNK_SIZE
    
    if (sys.argv[3]):
      print('Request {0} chunks of {1} bytes: total {2} bytes'.format(n_chunks, TRANSFER_CHUNK_SIZE, padded_xfilesize))

      # flush receive buffer (required)
      ser.flushInput()

      # send "read SPI Flash" command <r>
      ser.write(b'r')
      # send expected number of chunks as 4 bytes (big endian)
      ser.write(n_chunks.to_bytes(4, byteorder='big'))
      # send start address in bytes as 4 bytes (big endian)
      ser.write(start_offset.to_bytes(4, byteorder='big'))
      ser.flushOutput() # to make sure that TX buffer gets send
      sleep(1)

      # receive chunk files (large file split down into chunks of seperated files)
      if (n_chunks):
        file_chunk_number = 1
        retval = 0
        bytes_received = 0

        while ((retval != None)&(bytes_received != padded_xfilesize)):
          # create filename for chunk file
          outfile_name = storage_path_chunks+str(sys.argv[4])+str(file_chunk_number)
          stream = open(outfile_name, 'wb')
          retval = modem.recv(stream)
          if (retval != None):
            bytes_received = bytes_received + retval	# count number of received bytes (will be multiples of 128)
            print('reading from SPI Flash - {0} of {1} bytes read ({2}%)'.format(bytes_received, padded_xfilesize, int(bytes_received / padded_xfilesize * 100)))
            file_chunk_number = file_chunk_number + 1
          stream.close()

        # File concatenating to output file
        if (n_chunks):
            outfile_name = storage_path_output+ str(sys.argv[4])
            print("Concatenating "+str(n_chunks)+" chunk file(s) into output file: "+outfile_name)
            out_stream = open(outfile_name, 'wb')
            for i in range (0, n_chunks):
                    infile_name = storage_path_chunks+ str(sys.argv[4])+str(i+1)
                    in_stream = open(infile_name, 'rb')
                    copy_buffer=in_stream.read(TRANSFER_CHUNK_SIZE)
                    out_stream.write(copy_buffer)
                    in_stream.close()
            out_stream.close()
  ser.close()