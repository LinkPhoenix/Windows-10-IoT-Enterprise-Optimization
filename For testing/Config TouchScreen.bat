@ECHO CONFIG TOUCHSCREEN
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\TabletTip\1.7" /v EnableEdgeTarget /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\TabletTip\1.7" /v ShowIPTipTouchTarget /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\TabletTip\1.7" /v ShowIPTipTarget /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\Touch" /v PanningDisabled /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\Touch" /v TouchMode_hold /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\Touch" /v TouchUI /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\Touch" /v TouchGate /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\Multitouch" /v MultiTouchEnabled /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v ShowFlickTrayIcon /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v FlickMode /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v HoldMode /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v RightMaskEnable /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v EraseEnable /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v HoldMode /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v ShakeEnable /f

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\TabletTip\1.7" /v EnableEdgeTarget /t REG_DWORD /d 0 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\TabletTip\1.7" /v ShowIPTipTarget /t REG_DWORD /d 0 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\TabletTip\1.7" /v ShowIPTipTouchTarget /t REG_DWORD /d 0 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\Touch" /v PanningDisabled /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\Touch" /v TouchMode_hold /t REG_DWORD /d 0 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\Touch" /v TouchUI /t REG_DWORD /d 0 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\Touch" /v TouchGate /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\Multitouch" /v MultiTouchEnabled /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v ShowFlickTrayIcon /t REG_DWORD /d 0 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v FlickMode /t REG_DWORD /d 0 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v HoldMode /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v RightMaskEnable /t REG_DWORD /d 0 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v EraseEnable /t REG_DWORD /d 0 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v HoldMode /t REG_DWORD /d 3 /f
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\WISP\PEN\SysEventParameters" /v ShakeEnable /t REG_DWORD /d 0 /f

echo.
PAUSE