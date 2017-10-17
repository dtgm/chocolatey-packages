$packageName = 'tinycad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/tinycad/files/Official%20Release/2.90.00/TinyCAD_2.90.00_686_Production_Release.exe/download'
$checksum = '0954a4244b65446b47b7803b0642dde5f44dd027303c96c9d12583458785f23e'
$checksumType = 'sha256'
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
