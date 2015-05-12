$packageName = 'anomos'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/anomos/files/Anomos_0.9.5_Setup.exe/download'
$checksum = 'c4ae5c6e0ccae40a497b3a19765f01046fb9e288'
$checksumType = 'sha1'
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