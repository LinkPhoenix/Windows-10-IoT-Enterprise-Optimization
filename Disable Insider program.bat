:: Name : Disable Insider program
:: Description : remove 'Windows Insider Program' from Settings
:: URL Source : https://www.windowscentral.com/how-remove-windows-insider-program-settings-windows-10
:: Comment : Taking effect may not be immediate, if need restart
::
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "HideInsiderPage" /t "REG_DWORD" /d "1" /f