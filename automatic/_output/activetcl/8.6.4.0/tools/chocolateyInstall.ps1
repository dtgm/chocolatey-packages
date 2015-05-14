$packageName = 'activetcl'
$url = 'http://downloads.activestate.com/ActiveTcl/releases/8.6.4.0/ActiveTcl8.6.4.0.298892-win32-ix86-threaded.exe'
$checksum = '13dc02158c137732307f73718a77d8c6'
$checksumType = 'md5'
$url64 = 'http://downloads.activestate.com/ActiveTcl/releases/8.6.4.0/ActiveTcl8.6.4.0.298892-win32-x86_64-threaded.exe'
$checksum64 = '5c850b9bd50c1f333d289bebb7d5aa25'
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