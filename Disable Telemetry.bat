:: Name : Disable Telemetry
:: Description : Disable the system restore and prevent acces to config
:: URL Source : http://gpsearch.azurewebsites.net/#2400
:: Comment : Read the description of the Groupe Policy Rules
:: 
:: TEST : REG ADD "Ordinateur\HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects\{11111111-2222-3333-4444-555555555555}Machine\Software\Policies\Microsoft\Windows\DataCollection" /v "**del.AllowTelemetry" /t "REG_SZ" /d "" /f 
:: 
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t "REG_DWORD" /d "0" /f