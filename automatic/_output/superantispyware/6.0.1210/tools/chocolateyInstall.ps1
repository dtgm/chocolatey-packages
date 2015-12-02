$packageName = 'superantispyware'
$installerType = 'exe'
# ver 6.0.1194 fails on 8.1-64
#$silentArgs = '/SILENT'
$silentArgs = ''
$url = 'http://cdn.superantispyware.com/SUPERAntiSpyware.exe'
$checksum = 'e0cc8efe95e4443077bc8b5552deff02ca0d945c'
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