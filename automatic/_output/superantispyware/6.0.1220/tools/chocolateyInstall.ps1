$packageName = 'superantispyware'
$installerType = 'exe'
# ver 6.0.1194 fails on 8.1-64
#$silentArgs = '/SILENT'
$silentArgs = ''
$url = 'http://cdn.superantispyware.com/SUPERAntiSpyware.exe'
$checksum = '89272ecbe956cb6897770a8bd6f505b5258974e7a73528c9cdda48d0c4bca21b'
$checksumType = 'sha256'
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