@ECHO OFF
@Echo Disable UAC
@Echo Allows you to re-enable "This task will be created with administrative privileges"
@Echo with run > Windows+X
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
@Echo You will have to restart for this to take effect