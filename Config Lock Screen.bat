:: Name : Config the Lock Screen
:: Description : Config the Logon Screen/Lock Screen To prevent access to functions network, show password...
:: URL Source : http://gpsearch.azurewebsites.net/#10861
:: Comment : none
::
:: Remove Network selection UI
REG ADD "HKLM\Software\Policies\Microsoft\WinDows\System" /v "DontdisplaynetworkselectionUI" /t "REG_DWORD" /d "1" /f
:: Do not display the password reveal button
REG ADD "HKLM\Software\Policies\Microsoft\WinDows\CredUI" /v "Disablepasswordreveal" /t "REG_DWORD" /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\WinDows\CredUI" /v "Disablepasswordreveal" /t "REG_DWORD" /d "1" /f
:: Force a specific default lock screen and logon image
REG ADD "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v "LockScreenImage" /t "REG_SZ" /d "c:/Path/Image.jpg" /f
:: Turn off fantasy facts, tips, tricks and more
REG ADD "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v "Disablepasswordreveal" /t "REG_DWORD" /d "1" /f