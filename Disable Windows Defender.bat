:: Name : Disable Windows Defender
:: Description : Disable Windows Defender and prevent access
:: URL Source : http://gpsearch.azurewebsites.net/#2630
:: Comment : Cleanly disables the Windows defender functions.
:: This is the MsMpEng process that writes most of the values in the registry
::
:: Disable Real-time Monitoring
REG ADD "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRealtimeMonitoring" /t "REG_DWORD" /d "1" /f
REG ADD "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows Defender\Real-Time Protection" "DisableRealtimeMonitoring" /t "REG_DWORD" /d "1" /f
:: Other : HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy Objects\{11111111-2222-3333-4444-555555555555}Machine\Software\Policies\Microsoft\Windows Defender\Real-Time Protection
::
:: Diable Cloud based Protection
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t "REG_DWORD" /d "0" /f
::
:: Disable Automatic sample submission
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t "REG_DWORD" /d "0" /f
::
:: Disable Enhanced Notifications
REG ADD HKLM\SOFTWARE\Microsoft\Windows Defender\Reporting /v DisableEnhancedNotifications /t "REG_DWORD" /d "1" /f
::
:: Disable Windows Defender
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "1" /f
REG ADD "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "1" /f
:: other : : HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy Objects\{11111111-2222-3333-4444-555555555555}Machine\Software\Policies\Microsoft\Windows Defender