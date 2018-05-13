:: Name : Disable Smart Screen
:: Description : Disable Smart Screen feature
:: URL Source : https://blog.brankovucinec.com/2016/07/12/powershell-reclaim-windows-10/
:: Comment : None
::
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t "REG_SZ" /d "Off" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t "REG_DWORD" /d "0" /f