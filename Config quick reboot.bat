@ECHO Reboot rapide de Windows sans validation de fermeture d'applications
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v AllowBlockingAppsAtShutdown /t REG_DWORD /d 0x0 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 1 /f
REG ADD "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /v AutoEndTasks /t REG_SZ /d 1 /f
REG ADD "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 1 /f