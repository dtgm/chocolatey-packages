$packageName = 'cdex'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mirror.cdex.mu/CDex-1.81-win32.exe'
$checksum = 'd1a26f4bc31c1dea7298ee3f62ee190b281bc0ed'
$checksumType = 'sha1'
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