:: Name : Config Winrm
:: Description : Config Winrm
:: URL Source : None
:: Comment : None
::
sc config msiserver start= auto
sc config wuauserv start= auto
sc config mpssvc start= auto
net start msiserver
net start wuauserv
net start mpssvc
winrm quickconfig -quiet
powershell Enable-PSRemoting