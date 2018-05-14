:: Name : Disable Windows Calandar
:: Description : Disable the Windows Calandar feature
:: URL Source : None
:: Comment : none
::
REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Windows" /v "TurnOffWinCal" /t "REG_DWORD" /d "1" /f