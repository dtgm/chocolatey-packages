$packageName = 'fah'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://fah.stanford.edu/file-releases/public/release/fah-installer/windows-xp-32bit/v7.4/fah-installer_7.4.4_x86.exe'
$checksum = '0762027bdcb0c7ec34847c496bf2cbae4a3fe05a'
$checksumType = 'sha1'
$url64 = 'https://fah.stanford.edu/file-releases/public/release/fah-installer/windows-2008-64bit/v7.4/fah-installer_7.4.4_x86.exe'
$checksum64 = '6a47f22e49ff3567e246bcf05f744ab19c6fad93'
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