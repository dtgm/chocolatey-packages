$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://dl.appzona.org/ZonaSetup[8mbRp].exe'
$checksum = 'f9ebbe0f69ec4d9b2da2f8f1def2b17a657f888861afdca42b8f65b1baac91a0'
$checksumType = 'sha256'
$validExitCodes = @(0) #exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

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