@echo off

set pathBin=%ChocolateyInstall%\bin
:: default filename = putty.exe; renamed adbputty.exe
set exeFile=adbputty.exe

if exist "%pathBin%\%exeFile%" (
  REM echo File found: "%pathBin%\%exeFile%"
) else (
  echo ERROR! File not found: "%pathBin%\%exeFile%"
  exit /B 1
)

set connType=adb
set hostNam=transport-usb
:: default port
set portNum=5037
set args=-%connType% %hostNam% -P %portNum%

:: if android device not connected, wait until it is
cmd /C adb wait-for-device

:: start terminal
start "ADB-PuTTY" /B "%pathBin%\%exeFile%" %args%