:: Name : Disable IPv6
:: Description : Disable the IPv6 Component
:: URL Source : none
:: Comment : none
::
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t "REG_DWORD" /d "255" /f