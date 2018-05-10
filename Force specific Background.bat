@ECHO OFF
@Echo Enable the OEM Background
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v UseOEMBackground /t REG_DWORD /d 0x00000001 /f
@Echo Your need to add this here C:\Windows\System32\oobe\info\backgrounds\backgroundDefault.jpg
@Echo Enable Default tile for all users
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v UserDefaultTile /t REG_DWORD /d 0x00000001 /f
@Echo Windows accept just JPG format and the name must be backgroundDefault.jpg
:: REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d  C:\Windows\System32\oobe\info\backgrounds\backgroundDefault.jpg /f