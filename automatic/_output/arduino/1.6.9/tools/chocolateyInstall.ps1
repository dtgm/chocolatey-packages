$packageName = 'arduino'
$installerType = 'exe'
$url = 'http://arduino.cc/download.php?f=/arduino-1.6.9-windows.exe'
$checksum = '4a2febfa942a82bb0082edc17994e77424ad238f983db9ebe282271aa4c73aca'
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