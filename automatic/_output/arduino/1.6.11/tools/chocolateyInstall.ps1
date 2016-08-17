$packageName = 'arduino'
$installerType = 'exe'
$url = 'http://arduino.cc/download.php?f=/arduino-1.6.11-windows.exe'
$checksum = '8ff96a1c6ad95ca187670fff6094e4138fdc9c9edc3a88a73326f354d34ad48f'
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