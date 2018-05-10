@ECHO OFF
@Echo Disable Recovery
bcdedit /set {default} recoveryenabled No
@Echo Disable Windows Error Recovery on startup
bcdedit /set {default} bootstatuspolicy ignoreallfailures
@Echo Enable Boot loging
bcdedit /set {default} bootlog yes
@echo verify
bcdedit /timeout 0
@Echo Enable quietboot
bcdedit /set {current} quietboot Yes
@Echo Disable the F8 key during startup to prevent access to the Advanced startup options menu
bcdedit /set {globalsettings} advancedoptions false
@Echo Disable the F10 key during startup to prevent access to the Advanced startup options menu
bcdedit /set {globalsettings} optionsedit false
@Echo Suppress all Windows UI elements (logo, status indicator, and status message) during startup
#bcdedit /set {globalsettings} bootuxdisabled on
@Echo Disable Auto Recovery
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SPP\Clients" /f 