:: Name : Conf SNMP
:: Description : Set Community to public and accept SNMP packets from any host
:: URL Source : http://www.carrona.org/bsodreg.html
:: Comment : Edited this script negotiate your needs
::
:: Set Write debugging information : small memory dump
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v CrashDumpEnabled /t REG_DWORD /d 3 /f
:: Enable write an event to the system log
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v LogEvent /t REG_DWORD /d 1 /f
:: Enable Overwrite any existing file
:: Even if the option is inaccessible
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v Overwrite /t REG_DWORD /d 1 /f
:: Enable Automatically restart
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v AutoReboot /t REG_DWORD /d 1 /f
:: This next line is not verified
:: REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v MinidumpsCount /t REG_DWORD /d 32 /f