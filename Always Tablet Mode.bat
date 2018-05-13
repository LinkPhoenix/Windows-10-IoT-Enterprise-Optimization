:: Name : Always Tablet Mode
:: Description : Always set Tablet Mode when Sign in and never ask and do not chnage for Tablet Mode
:: URL Source : None
:: Comment : None
::
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "SignInMode" /t "REG_DWORD" /d "0" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "ConvertibleSlateModePromptPreference" /t "REG_DWORD" /d "0" /f