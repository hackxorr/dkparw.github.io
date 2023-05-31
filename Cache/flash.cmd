@echo off
(
    echo ------Usuario------
    whoami
    echo ------Direccion IPv4------
    for /F "tokens=2 delims=:" %%i in ('ipconfig ^| findstr "IPv4"') do echo %%i
    echo ------Interfaz Wi-Fi------
    netsh wlan show interfaces | findstr "SSID"
) > flag_flash.txt
start /B "" cmd /C exit >NUL
