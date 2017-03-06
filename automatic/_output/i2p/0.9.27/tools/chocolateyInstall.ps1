$packageName = 'i2p'
$installerType = 'exe'
$silentArgs = ''
$url = 'https://download.i2p2.de/releases/0.9.27/i2pinstall_0.9.27_windows.exe'
$checksum = 'af712a5f71d40c3dfdcd21f34696324acfb499fe54f6c751059aeea414b9f5c7'
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