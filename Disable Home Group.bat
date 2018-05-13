:: Name : Disable Home Group
:: Descritption : Prevent he usage of the Home Group feature
:: Url information : http://gpsearch.azurewebsites.net/#2358
:: Comment : Remove the usage and remove the shortcut in the explorer
::
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\HomeGroup" /v "DisableHomeGroup" /t "REG_DWORD" /d "1" /f