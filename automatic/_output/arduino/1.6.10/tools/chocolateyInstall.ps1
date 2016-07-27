$packageName = 'arduino'
$installerType = 'exe'
$url = 'http://arduino.cc/download.php?f=/arduino-1.6.10-windows.exe'
$checksum = '4b8d362f23ec988af5cdda40f68061a018b34ffdac2690daffce4fa83445c493'
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