:: Name : Disable AutoPlay
:: Description : Disable Auto Play feature
:: URL Source : None
:: Comment : None
::
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /v "DisableAutoplay" /t "REG_DWORD" /d "1" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\StorageOnArrival" /v "(Default)" /t "REG_SZ" /d "MSTakeNoAction" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\StorageOnArrival" /v "(Default)" /t "REG_SZ" /d "MSTakeNoAction" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\CameraAlternate\ShowPicturesOnArrival" /v "(Default)" /t "REG_SZ" /d "MSTakeNoAction" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\CameraAlternate\ShowPicturesOnArrival" /v "(Default)" /t "REG_SZ" /d "MSTakeNoAction" /f