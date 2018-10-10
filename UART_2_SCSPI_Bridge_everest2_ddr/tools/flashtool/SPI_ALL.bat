python ./scripts/flash_deviceID.py com53
python ./scripts/flash_erase_chunks.py com53 0x00000000 1
echo wait for LED to stop flashing on FPGA board !
python ./scripts/flash_write_chunks.py com53 0x00000000 ./init_data/MiV_uart_blinky.bin
python ./scripts/flash_read_chunks.py com53 0x00000000 2 outfile.bin
python ./scripts/application_start.py com53
