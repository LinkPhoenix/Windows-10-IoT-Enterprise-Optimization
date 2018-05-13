:: Name : Disable Windows Search
:: Description : Disable the Windows Search feature and hide icon in taskbar
:: URL Source : http://www.softwareok.com/?seite=faq-Windows-10&faq=53
:: Comment : You must restart Explorer. exe so that the icon is hidden
::
sc stop WSearch
sc config WSearch start=disabled
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f
Dism /online /Disable-Feature /FeatureName:"SearchEngine-Client-Package" /Remove /norestart