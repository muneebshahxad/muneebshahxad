@echo off
echo By MuneebShahxad aka BabaYaga - (YouTube.com/BabaYagaLive)
@echo
net stop wuauserv
@echo
net stop UsoSvc
@echo
net stop bits
@echo
net stop dosvc
@echo
echo Deleting Windows Update Files
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
pause