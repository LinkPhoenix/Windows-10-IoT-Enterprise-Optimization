:: Name : Remove OneDrive
:: Description : uninstall OneDrive and disable
:: URL Source : None
:: Comment : None
::
taskkill /IM "OneDrive.exe" /F
%windir%\WinSxS\wow64_microsoft-windows-onedrive-setup_31bf3856ad364e35_10.0.14393.0_none_5d0956f97123b1d2\OneDriveSetup.exe /uninstall
rmdir "%UserProfile%\OneDrive" "%ProgramData%\Microsoft OneDrive" "%LocalAppData%\Microsoft\OneDrive" "C:\OneDriveTemp" /S /Q