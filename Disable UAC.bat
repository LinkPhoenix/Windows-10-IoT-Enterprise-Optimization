:: Name : Disable UAC
:: Description : Disable the User Account Control
:: URL Source : None
:: Comment : Allows you to re-enable "This task will be created with administrative privileges"
:: with run > Windows+X
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
:: You will have to restart for this to take effect