$packageName = 'superantispyware'
$installerType = 'exe'
# ver 6.0.1194 fails on 8.1-64
#$silentArgs = '/SILENT'
$silentArgs = ''
$url = 'http://cdn.superantispyware.com/SUPERAntiSpyware.exe'
$checksum = '1063d8ad9836087997ab2055ad8a39c6acd13c31'
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