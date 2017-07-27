$packageName = 'superantispyware'
$installerType = 'exe'
# ver 6.0.1194 fails on 8.1-64
#$silentArgs = '/SILENT'
$silentArgs = ''
$url = 'http://cdn.superantispyware.com/SUPERAntiSpyware.exe'
$checksum = '4efb13d6002dd1c61090f3d502cf0f39afac08e6c2fe76eabd1dc9c738e47092'
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