:: Name : Disable Map Update
:: Description : Disable auto update for maps
:: URL Source : None
:: Comment : None
::
REG ADD "HKLM\SYSTEM\Maps" /v "AutoUpdateEnabled" /t "REG_DWORD" /d "0" /f