$packageName = 'cdex'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mirror.cdex.mu/CDex-1.92.exe'
$checksum = '13461a26259bc976f8a40c082fa8efc44e23b9e08c3deaef8aa9de36081b50b2'
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