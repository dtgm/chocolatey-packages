$packageName = 'tinycad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/tinycad/files/Official%20Release/2.80.08/TinyCAD_2.80.08_631_Production_Release.exe/download'
$checksum = 'a912e2888649283f8dd9d9449686c80ff2e08ed8'
$checksumType = 'sha1'
$validExitCodes = @(0)

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "tinycad.jar"
$ahkFile = Join-Path "$toolsDir" 'chocolateyInstall.ahk'

Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
