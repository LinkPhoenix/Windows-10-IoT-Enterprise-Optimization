:: Name : Disable Sync Your Settings
:: Descritpion : Disable Sync setting feature and prevent acces
:: URL Source : https://www.tenforums.com/tutorials/43246-enable-disable-sync-your-settings-windows-10-a.html
:: Comment : Prevent the "Start layout" group from syncing to and from this PC. This turns off 
:: and disables the "Start layout" group on the "sync your settings" page in PC settings.
::
REG ADD "HKLM\Software\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t "REG_DWORD" /d "2" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t "REG_DWORD" /d "1" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows\SettingSync" /v "EnableBackupForWin8Apps" /t "REG_DWORD" /d "0" /f