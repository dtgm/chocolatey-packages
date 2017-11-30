$packageName = 'git-annex'
$installerType = 'exe'
$silentArgs = '/S /D=C:\Program Files\Git'
$url = 'https://downloads.kitenet.net/git-annex/windows/current/git-annex-installer.exe'
$checksum = '092c73e807553fc75f0d3bb16a999387a15a3808d0ea7a9c6222d610ea805088'
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