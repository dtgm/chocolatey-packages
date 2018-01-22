$packageName = 'cdex'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mirror.cdex.mu/CDex-1.98.exe'
$checksum = '3c2c45e418939ad662d10b49e1e2048456c98fcec36b9c0bdabd338a29da8d88'
$checksumType = 'sha256'
$validExitCodes = @(0)
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\chocolateyInstall.ahk"

Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"