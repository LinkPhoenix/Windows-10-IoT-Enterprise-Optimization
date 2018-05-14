:: Name : Visual effects - best performance
:: Description : Set the visual effects to best performance
:: URL Source : none
:: Comment : none
::
REG DELETE "HKCU\Control Panel\Desktop" /v UserPreferencesMask /f
REG ADD "HKCU\Control Panel\Desktop\" /v UserPreferencesMask /t REG_BINARY /d 9e3e078012000000 /f
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 1 /f
REG DELETE "HKCU\Control Panel\Desktop" /v DragFullWindows /f
REG ADD "HKCU\Control Panel\Desktop" /v DragFullWindows /t REG_SZ /d 1 /f
REG DELETE "HKCU\Control Panel\Desktop" /v FontSmoothing /f
REG ADD "HKCU\Control Panel\Desktop" /v FontSmoothing /t REG_SZ /d 1 /f
REG DELETE "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /f
REG ADD "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewAlphaSelect /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewAlphaSelect /t REG_DWORD /d 1 /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewShadow /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewShadow /t REG_DWORD /d 1 /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewWatermark /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewWatermark /t REG_DWORD /d 1 /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 1 /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v WebView /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v WebView /t REG_DWORD /d 1 /f
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\ThemeManager" /v ThemeActive /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ThemeManager" /v ThemeActive /t REG_DWORD /d 1 /f