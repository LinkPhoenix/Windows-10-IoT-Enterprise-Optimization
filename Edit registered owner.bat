:: Name : Edit registered owner
:: Description : Edit registered owner
:: URL Source : https://www.howtogeek.com/howto/windows-vista/quick-tip-change-the-registered-owner-in-windows/
:: Comment : Use Windows+R to see the changes
::
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "RegisteredOwner" /t "REG_DWORD" /d "Owner" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "RegisteredOrganization" /t "REG_DWORD" /d "Organization owner" /f