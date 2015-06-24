$packageName = 'arduino'
$installerType = 'EXE'
$url = 'http://arduino.cc/download.php?f=/arduino-1.6.5-windows.exe'
$checksum = 'b90fbd6f9dcd1b32b2828d66803d023e037416bd'
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