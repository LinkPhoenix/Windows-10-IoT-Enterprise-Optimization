:: Name : Disable Maintenance
:: fonciton : Disable the maintenance of window when is IDLE
:: Url information : https://winaero.com/blog/how-to-disable-automatic-maintenance-in-windows-10/
:: Comment : none
::
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t "REG_DWORD" /d "1" /f