$packageName = 'cdex'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mirror.cdex.mu/CDex-1.87.exe'
$checksum = '91feae5c9e068b84a45ee3400a103196dba97ba31846cd38204371c7803c3348'
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