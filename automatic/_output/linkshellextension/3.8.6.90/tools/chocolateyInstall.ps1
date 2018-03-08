$packageName = 'linkshellextension'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_win32.exe'
$checksum = '10cbba3f2f07de64d52191505915a8fd70e8b138f9ea8527dfdf434176a43265'
$checksumType = 'sha256'
$url64 = 'http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_X64.exe'
$checksum64 = 'c74056990d9a012e81448f88a76eed6dc231c84f2ef8661fdbaf3d8c543ccc80'
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