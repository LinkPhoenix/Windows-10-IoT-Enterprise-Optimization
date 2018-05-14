:: Name : Enable Auto Logon
:: Description : Enable Auto user for "user" with the password "PassWord"
:: URL Source : None
:: Comment : Edit the script negotiate your needs
::
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AutoAdminLogon" /t "REG_SZ" /d "1" /f
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "DefaultUserName" /t "REG_SZ" /d "user" /f
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "DefaultPassword" /t "REG_SZ" /d "PassWord" /f
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AutoLogonCount" /t "REG_DWORD" /d "0" /f