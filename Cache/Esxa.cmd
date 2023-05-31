@echo off
(
    echo ------Usuario------
    whoami
    echo ------Direccion IPv4------
    for /F "tokens=2 delims=:" %%i in ('ipconfig ^| findstr "IPv4"') do echo %%i
    echo ------Interfaz Wi-Fi------
    netsh wlan show interfaces | findstr "SSID"
    rem set /p "ty=Escribe-> "
    rem echo ------Clave De SSID------
    rem netsh wlan show profile name=%ty% key=clear | findstr "clave"
    echo ------SystemInfo------
    systeminfo
) > flag_Esxa.txt
start /B "" cmd /C exit >NUL
