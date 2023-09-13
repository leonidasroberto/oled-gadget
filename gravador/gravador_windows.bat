echo off
set /p port=Porta USB: 
echo %port%
python -I .\esp8266\3.1.2\tools\upload.py --chip esp8266 --port %port% --baud 115200 --before default_reset --after hard_reset write_flash 0x0 .\esp8266.bin