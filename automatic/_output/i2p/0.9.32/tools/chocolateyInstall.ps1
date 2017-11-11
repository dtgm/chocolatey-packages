$packageName = 'i2p'
$installerType = 'exe'
$silentArgs = ''
$url = 'https://download.i2p2.de/releases/0.9.32/i2pinstall_0.9.32_windows.exe'
$checksum = 'f0c08011aaf76dedf441ba2e53440eecc278ec249f325600dcd07a4af0483269'
$checksumType = 'sha256'
$validExitCodes = @(0)

$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $scriptPath "chocolateyInstall.ahk"
$ahkExe = 'AutoHotKey'
Start-Process $ahkExe $ahkFile

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"