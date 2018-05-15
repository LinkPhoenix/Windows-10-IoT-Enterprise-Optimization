:: Name : Remove and Prevent all button power
:: Description : Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands
:: URL Source : http://gpsearch.azurewebsites.net/
:: Comment : none
::
REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HidePowerOptions" /t "REG_DWORD" /d "1" /f
REG ADD "Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoClose" /t "REG_DWORD" /d "1" /f