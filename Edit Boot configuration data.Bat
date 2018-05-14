:: Name : Disable Windows Search
:: Description : Disable the Windows Search feature and hide icon in taskbar
:: URL Source : http://www.softwareok.com/?seite=faq-Windows-10&faq=53
:: Comment : You must restart Explorer. exe so that the icon is hidden
::
:: Disable Recovery
bcdedit /set {default} recoveryenabled No
:: Disable Windows Error Recovery on startup
bcdedit /set {default} bootstatuspolicy ignoreallfailures
:: Enable Boot loging
bcdedit /set {default} bootlog yes
:: verify
bcdedit /timeout 0
:: Enable quietboot
bcdedit /set {current} quietboot Yes
:: Disable the F8 key during startup to prevent access to the Advanced startup options menu
bcdedit /set {globalsettings} advancedoptions false
:: Disable the F10 key during startup to prevent access to the Advanced startup options menu
bcdedit /set {globalsettings} optionsedit false
:: Suppress all Windows UI elements (logo, status indicator, and status message) during startup
:: If your Windows is in UEFI mode you may want to keep the logo of the brand of the computers.
:: In this case does not use this line
:: bcdedit /set {globalsettings} bootuxdisabled on
:: Disable Auto Recovery
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SPP\Clients" /f 