$packageName = 'git-annex'
$installerType = 'exe'
$silentArgs = '/S /D=C:\Program Files\Git'
$url = 'https://downloads.kitenet.net/git-annex/windows/current/git-annex-installer.exe'
$checksum = '841db1f017769e218636d90009043b72caff0806347f6dbec1cc345bae9df62e'
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