:: Name : Conf NTP
:: Description : Configures the NTP client
:: URL Source 1 : https://winaero.com/blog/configure-internet-time-ntp-options-in-windows-10/
:: URL Source 2 : https://docs.microsoft.com/en-us/windows-server/networking/windows-time-service/windows-time-service-tools-and-settings
:: URL Source 3 : https://www.trishtech.com/2015/06/sync-time-in-windows-with-ntp-server-using-command-line/
:: URL Source 4 : https://support.microsoft.com/fr-fr/help/816042/how-to-configure-an-authoritative-time-server-in-windows-server
:: Comment : You need to modify this script negotiate your needs
::
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DateTime\Servers" /v "1" /t "REG_SZ" /d "1.2.3.4" /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DateTime\Servers" /v "2" /t "REG_SZ" /d "time.ntp.dom" /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DateTime\Servers" /v "(Default)" /t "REG_SZ" /d "1" /f
W32TM.exe /config /manualpeerlist:"1.2.3.4 pool.ntp.org" /syncfromflags:manual /update