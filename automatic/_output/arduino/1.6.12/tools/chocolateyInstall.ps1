$packageName = 'arduino'
$installerType = 'exe'
$url = 'http://arduino.cc/download.php?f=/arduino-1.6.12-windows.exe'
$checksum = '45a1544dcaccf85a35b4b1eae40bf0812b7da4e73cdde15b97a164bbe10ae4bd'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "chocolateyInstall.ahk"
Start-Process $ahkExe $ahkFile

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"