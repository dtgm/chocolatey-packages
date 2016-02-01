$packageName = 'easytag'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.gnome.org/binaries/win32/easytag/2.4/easytag-2.4.1-setup.exe'
$checksum = '39230dbc7b2ab022109dd9c6d7f4c7e7864efdec'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"