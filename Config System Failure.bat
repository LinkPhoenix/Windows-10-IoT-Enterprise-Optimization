@ECHO OFF
@echo Set Write debugging information : small memory dump
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v CrashDumpEnabled /t REG_DWORD /d 3 /f
@echo Enable write an event to the system log
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v LogEvent /t REG_DWORD /d 1 /f
@echo Enable Overwrite any existing file
@echo Even if the option is inaccessible
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v Overwrite /t REG_DWORD /d 1 /f
@echo Enable Automatically restart
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v AutoReboot /t REG_DWORD /d 1 /f
@echo Veify this
:: REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v MinidumpsCount /t REG_DWORD /d 32 /f