:: Name : Edit OEM Information
:: Description : Edit OEM Informaton
:: URL Source : http://www.thewindowsclub.com/add-change-oem-information-windows
:: Comment : You will have to edit this file with the information
:: of your company and your support team
::
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /f
:: Change the path of your logo
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v Logo /t Reg_SZ /d "path\oemlogo.bmp" /f
:: Set the Manufacturer
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v Manufacturer /t Reg_SZ /d "Manufacturer" /f
:: Set the model of your PC
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v Model /t Reg_SZ /d "Model" /f
:: Set the support Hours of your Support
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v SupportHours /t Reg_SZ /d "SupportHours" /f
:: Set the support phone of your Support 
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v SupportPhone /t Reg_SZ /d "SupportPhone" /f
:: Set the support URL of your support
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v SupportURL /t Reg_SZ /d "SupportURL" /f