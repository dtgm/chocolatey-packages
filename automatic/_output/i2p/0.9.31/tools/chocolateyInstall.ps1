$packageName = 'i2p'
$installerType = 'exe'
$silentArgs = ''
$url = 'https://download.i2p2.de/releases/0.9.31/i2pinstall_0.9.31_windows.exe'
$checksum = 'c8fed029d71b819afc129d6a397ea5983de3375ae2985d97661153405ffc0dde'
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