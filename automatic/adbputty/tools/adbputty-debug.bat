@echo off

tasklist /FI "IMAGENAME eq adb.exe" 2>NUL | find /I /N "adb.exe">NUL
REM if "%ERRORLEVEL%"=="0" echo Programm is running goto running
REM not necessary, multiple instances of adb.exe are not ran concurrently
if "%errorLevel%"=="0" (
  echo adb service is running
) else (
  echo adb service is NOT running
  exit /B 1
)

set pathBin=c:\dev
:: renamed putty.exe to adbputty.exe so unique
set exeFile=putty.exe
if exist "%pathBin%\%exeFile%" (
  echo File found: "%pathBin%\%exeFile%"
) else (
  echo File could not be found: "%pathBin%\%exeFile%"
  exit /B 1
)

pause