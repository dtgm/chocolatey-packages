$packageName = 'cdex'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mirror.cdex.mu/CDex-1.97.exe'
$checksum = '532f8dcd463507ed5461a43714d409d1994c4d5f49c3b156e862a736147d9ac7'
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