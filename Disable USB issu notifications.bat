:: Name : Disable USB issu notifications
:: Description : Disables problem notifications with a USB device
:: URL Source : None
:: Comment : None
::
REG ADD "HKCU\SOFTWARE\Microsoft\Shell\USB" /v "NotifyOnUsbErrors" /t "REG_DWORD" /d "0" /f