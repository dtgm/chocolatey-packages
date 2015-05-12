$packageName = 'arduino'
$installerType = 'EXE'
$url = 'http://arduino.cc/download.php?f=/arduino-1.6.4-windows.exe'
$checksum = '7693efec0c09c319b7f9f4d2d1c0f2978f09738e'
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