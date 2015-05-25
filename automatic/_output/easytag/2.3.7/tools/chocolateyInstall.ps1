$packageName = 'easytag'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.gnome.org/binaries/win32/easytag/2.3/easytag-2.3.7-setup.exe'
$checksum = '36c4fcb75df552d0492b591900072bb6d038a7e5'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"