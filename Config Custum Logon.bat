@ECHO OFF
@Echo Enable the Custum Logon feature
@Echo You will need to restart for the options to take effect
Dism -Online /Enable-Feature /FeatureName:Client-DeviceLockdown /NoRestart
Dism /Online /Enable-Feature /FeatureName:Client-EmbeddedLogon /NoRestart
@Echo Hides items that appear on the connection screen
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Embedded\EmbeddedLogo" /v BrandingNeutral /t REG_DWORD /d 17 /f
@Echo Hides the whole process of auto-connection
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Embedded\EmbeddedLogo" /v HideAutoLogonUI /t REG_DWORD /d 1 /f
@Echo Disable the "First Logon Animation"
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Embedded\EmbeddedLogo" /v HideFirstLogonAnimation /t REG_DWORD /d 1 /f