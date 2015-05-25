$packageName = 'linkshellextension'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_win32.exe'
$checksum = 'afb27c0f4fc1a93b3aa5e9cedbc3d240114963c5'
$checksumType = 'sha1'
$url64 = 'http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_X64.exe'
$checksum64 = '8285f7d7d24fa997802d7b8ba092c515f80ad248'
$checksumType64 = 'sha1'
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