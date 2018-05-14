:: Name : Force specific background and tile user
:: Description : Force specific background and tile user
:: URL Source : none
:: Comment : none
::
:: Enable the OEM Background
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UseOEMBackground" /t "REG_DWORD" /d "0x00000001" /f
REG ADD "HKCU\Control Panel\Desktop" /v "Wallpaper" /t "REG_SZ" /d "C:\Windows\System32\oobe\info\backgrounds\backgroundDefault.jpg" /f
:: Your need to add this here C:\Windows\System32\oobe\info\backgrounds\backgroundDefault.jpg
:: Your image should be called "backgroundDefault" and not otherwise in JPG format
::
:: Enable Default tile for all users
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "UserDefaultTile" /t "REG_DWORD" /d "0x00000001" /f