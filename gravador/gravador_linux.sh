#!/bin/bash
echo "Porta USB: "
read usbport
python3 -I ./esp8266/3.1.2/tools/upload.py --chip esp8266 --port $usbport --baud 115200 --before default_reset --after hard_reset write_flash 0x0 ./esp8266.bin
