$packageName = 'linkshellextension'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_win32.exe'
$checksum = 'edfc9168ad4b65b303c01454874179b79d3b7ee8'
$checksumType = 'sha1'
$url64 = 'http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_X64.exe'
$checksum64 = 'f550cbd005ad102c354453f4868fe771fba852f5'
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