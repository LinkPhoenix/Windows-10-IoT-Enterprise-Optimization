@Echo OFF
@Echo Enable Remote Desktop
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server"  /v fDenyTSConnections /t REG_DWORD /d 0 /f
@Echo Disable Allow connections only from computer runing Remote Desktop
@Echo with Network Level Authentication
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 0 /f
@Echo Enable a rule remote desktop in the firewall
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes