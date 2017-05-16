$packageName = 'gsmartcontrol'
$installerType = 'exe'
$silentArgs = '/S'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = 'http://sourceforge.net/projects/gsmartcontrol/files/0.9.0/gsmartcontrol-0.9.0.exe/download'
$checksum = '{checksum}'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
