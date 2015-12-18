$packageName = 'arduino'
$installerType = 'EXE'
$url = 'http://arduino.cc/download.php?f=/arduino-1.6.7-windows.exe'
$checksum = '834abf2265bae12627580bd7397e415a169caed9'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"

Start-Process $ahkExe $ahkFile
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"