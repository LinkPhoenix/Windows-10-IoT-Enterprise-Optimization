:: arguments
:: oLink.Arguments
:: oLink.Description
:: oLink.HotKey
:: oLink.IconLocation
:: oLink.WindowStyle
:: oLink.WorkingDirectory
:: source : https://ss64.com/nt/shortcut.html
:: Path for pin the shortcut : C:\ProgramData\Microsoft\Windows\Start Menu\Programs
@ECHO OFF
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\restart.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%WINDIR%\system32\shutdown.exe /r /f /t 0" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%