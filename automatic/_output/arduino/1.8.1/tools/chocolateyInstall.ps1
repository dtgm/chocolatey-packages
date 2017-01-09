$packageName = 'arduino'
$installerType = 'exe'
$url = 'http://arduino.cc/download.php?f=/arduino-1.8.1-windows.exe'
$checksum = '05444829645b088eb9b79b516af4d57dda4a0f28259005feeb6a5bbd5f3062f7'
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