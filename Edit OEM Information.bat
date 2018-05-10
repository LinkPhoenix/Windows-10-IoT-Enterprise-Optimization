@ECHO OFF
@Echo Add OEM Informations
@Echo You will have to edit this file with the information
@Echo of your company and your support team
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /f
@Echo Change the path of your logo
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v Logo /t Reg_SZ /d "path\oemlogo.bmp" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v Manufacturer /t Reg_SZ /d "Manufacturer" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v Model /t Reg_SZ /d "Model" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v SupportHours /t Reg_SZ /d "SupportHours" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v SupportPhone /t Reg_SZ /d "SupportPhone" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" /v SupportURL /t Reg_SZ /d "SupportURL" /f