@echo off
echo Batch File By MuneebShahxad
taskkill /F /FI "IMAGENAME eq SystemSettings.exe"
@echo
net stop wuauserv
net stop UsoSvc
@echo
echo Disable Automatic Updates except Microsoft Store Updates
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "0" /f
@echo
gpupdate /force
@echo
echo Deleting Windows Update Files
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
@echo
net start wuauserv
net start UsoSvc
echo Windows Updates Are Successfully Disabled!
pause