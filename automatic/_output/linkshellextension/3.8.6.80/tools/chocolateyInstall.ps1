$packageName = 'linkshellextension'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_win32.exe'
$checksum = 'd360e8089cabb9fc48e4a68978af528a32ff0e4927fd4cf7a54914df8e6bb68b'
$checksumType = 'sha256'
$url64 = 'http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_X64.exe'
$checksum64 = 'c7b5ae47d4bb79c0242bc41f5620ab60c7019cec61547a2cb0ad3d288fb54e3e'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

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