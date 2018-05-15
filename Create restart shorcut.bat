:: Name : Create restart shorcut
:: Description : Create restart shortcut and pin in the start menu
:: URL Source : https://ss64.com/nt/shortcut.html
:: Comment : The "oLink.IconLocation" set the best icon
::
@ECHO OFF
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\restart.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%WINDIR%\system32\shutdown.exe" >> %SCRIPT%
echo oLink.Arguments = "/r /f /t 0" >> %SCRIPT%
echo oLink.Description = "Restart" >> %SCRIPT%
echo oLink.IconLocation = "%SystemRoot%\System32\SHELL32.dll, 238" >> %SCRIPT%
echo oLink.HotKey = "" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%