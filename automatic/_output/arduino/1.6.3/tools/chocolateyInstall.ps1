$packageName = 'arduino'
$installerType = 'EXE'
$url = 'http://arduino.cc/download.php?f=/arduino-1.6.3-windows.exe'
$checksum = 'cf6bd0730ad1440ca80205e36919a87242fc3778'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"

Start-Process $ahkExe $ahkFile
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"