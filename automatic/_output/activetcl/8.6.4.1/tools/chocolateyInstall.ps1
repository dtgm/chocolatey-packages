$packageName = 'activetcl'
$url = 'http://downloads.activestate.com/ActiveTcl/releases/8.6.4.1/ActiveTcl8.6.4.1.299124-win32-ix86-threaded.exe'
$checksum = '0263e13a4cc27916094c44975ff05874'
$checksumType = 'md5'
$url64 = 'http://downloads.activestate.com/ActiveTcl/releases/8.6.4.1/ActiveTcl8.6.4.1.299124-win32-x86_64-threaded.exe'
$checksum64 = '20236a2f7d8d1aeecb4a2d423b805db9'
$checksumType64 = 'md5'
$installerType = 'exe'
$validExitCodes = @(0)

$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName
$silentArgs = "--directory `"$installPath`""

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "chocolateyInstall.ahk"

Start-Process $ahkExe $ahkFile
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"

$installPathBin = Join-Path $installPath 'bin'
Install-ChocolateyPath $installPathBin