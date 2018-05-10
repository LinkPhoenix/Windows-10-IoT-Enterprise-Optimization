@ECHO OFF
@Echo Disable automatically download manufacturers's apps and custom
@Echo icons available for your devices
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 0 /f