$packageName = 'easytag'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.gnome.org/binaries/win32/easytag/2.4/easytag-2.4.0-setup.exe'
$checksum = ''
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"