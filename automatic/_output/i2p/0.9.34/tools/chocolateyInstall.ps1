$packageName = 'i2p'
$installerType = 'exe'
$silentArgs = ''
$url = 'https://download.i2p2.de/releases/0.9.34/i2pinstall_0.9.34_windows.exe'
$checksum = 'f66ca8c5022a639e3e642ec3ff7b2de7cea53ec05f98a22a3875730661a0b601'
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