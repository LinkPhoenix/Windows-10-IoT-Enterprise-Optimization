:: Name : Edit Power Options
:: Description : Edit Power Options and keep only high performance profile
:: URL Source : none
:: Comment : none
::
:: Move to "High performance" profile
POWERCFG -SETACTIVE SCHEME_MIN
:: Delete profile "Balanced" and "High performance"
POWERCFG /D 381b4222-f694-41f0-9685-ff5bb260df2e
POWERCFG /D a1841308-3541-4fab-bc81-f71556f20b4a
:: Config the "High performance" profile
POWERCFG -x hibernate-timeout-ac 0
POWERCFG -x hibernate-timeout-dc 0
POWERCFG -x standby-timeout-ac 0
POWERCFG -x standby-timeout-dc 0
POWERCFG -x monitor-timeout-ac 0
POWERCFG -x monitor-timeout-dc 0
POWERCFG -x disk-timeout-ac 0
POWERCFG -x disk-timeout-dc 0
POWERCFG -hibernate off
:: Stop and sleep button do nothing
:: DCSettingIndex = On Battery
:: ACSettingIndex = Plugged in
REG ADD "HKLM\Software\Policies\Microsoft\Power\PowerSettings\7648EFA3-DD9C-4E3E-B566-50F929386280" /v "DCSettingIndex" /t "REG_DWORD" /d "0" /f
REG ADD "HKLM\Software\Policies\Microsoft\Power\PowerSettings\7648EFA3-DD9C-4E3E-B566-50F929386280" /v "ACSettingIndex" /t "REG_DWORD" /d "0" /f
REG ADD "HKLM\Software\Policies\Microsoft\Power\PowerSettings\96996BC0-AD50-47EC-923B-6F41874DD9EB" /v "DCSettingIndex" /t "REG_DWORD" /d "0" /f
REG ADD "HKLM\Software\Policies\Microsoft\Power\PowerSettings\96996BC0-AD50-47EC-923B-6F41874DD9EB" /v "ACSettingIndex" /t "REG_DWORD" /d "0" /f
:: No password request for standby output
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c fea3413e-7e05-4911-9a71-700331f1c294 0e796bdb-100d-47d6-a2d5-f7d2daa51f51 0
powercfg -setdcvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c fea3413e-7e05-4911-9a71-700331f1c294 0e796bdb-100d-47d6-a2d5-f7d2daa51f51 0
:: USB settings/USB selective suspend setting
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
:: Display/Dim display after
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
:: Disable Waking screen
REG DELETE "HKCU\control panel\desktop" /v "ScreenSaveActive" /f 
REG ADD "HKCU\control panel\desktop" /v "ScreenSaveActive" /t "REG_SZ" /d "0" /f 
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters