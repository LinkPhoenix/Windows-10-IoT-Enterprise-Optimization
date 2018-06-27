:: Name : Conf CTRL+ALT+SUPPR
:: Description : Hide "Log Off", "Change Password", "Lock", from the CTRL+ALT+SUPPR
:: URL Source : None
:: Comment : None
::
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLogoff" /t "REG_DWORD" /d "1" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableChangePassword" /t "REG_DWORD" /d "1" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableLockWorkstation" /t "REG_DWORD" /d "1"/f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "HideFastUserSwitching" /t "REG_DWORD" /d "1" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "NoLogoff" /t "REG_DWORD" /d "1" /f
