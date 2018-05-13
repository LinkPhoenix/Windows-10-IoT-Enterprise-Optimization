:: Name : Conf Device Installation Settings
:: Description : Disable automatically download manufacturers's apps and custom
:: icons available for your devices
:: URL Source : None
:: Comment : Enable the Custum Logon feature and you will need to restart for the options to take effect
::
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t "REG_DWORD" /d "0" /f