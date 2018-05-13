:: Name : Config Feedback Frequency
:: Description : Confi Feedback Frequency for Never send
:: URL Source : 
:: Comment : I have not found a way to prevent changing the setting
::
REG ADD "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t "REG_DWORD" /d "0" /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f