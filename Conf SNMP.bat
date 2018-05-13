:: Name : Conf SNMP
:: Description : Set Community to public and accept SNMP packets from any host
:: URL Source : None
:: Comment : None
::
Dism /online /enable-feature /featurename:SNMP /norestart
Dism /online /enable-feature /featurename:WMISnmpProvider /norestart
REG ADD "HKLM\SOFTWARE\Policies\SNMP\Parameters\ValidCommunities" /v "1" /t "REG_SZ" /d "public" /f
REG ADD "HKLM\System\CurrentControlSet\Services\SNMP\Parameters" /v "EnableAuthenticationTraps" /t "REG_DWORD" /d "1" /f