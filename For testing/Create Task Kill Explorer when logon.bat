:: Name : Create Task Kill Explorer when logon
:: Description : Create Task Kill Explorer when logon
:: URL Source : https://ss64.com/nt/schtasks.html
:: Comment : Creating a task that kills the explorer when starting
:: the users session with system privilege after 30 seconds
::
schtasks /create /NP /RL HIGHEST /RU "NT AUTHORITY\SYSTEM" /tn kill_explorer /TR "taskkill /PID explorer.exe /f" /SC ONLOGON /DELAY 0000:30