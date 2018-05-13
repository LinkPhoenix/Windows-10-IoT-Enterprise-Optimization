:: Name : Disable Peer to Peer Sharing
:: Descritpion : Turn off Microsoft Peer-to-Peer Networking Services
:: Url Source : http://gpsearch.azurewebsites.net/#2098
:: Comment : This setting turns off Microsoft Peer-to-Peer Networking Services in its entirety, and will cause all dependent applications to stop working.
::
REG ADD "HKLM\Software\policies\Microsoft\Peernet" /v "Disable" /t "REG_DWORD" /d "1" /f