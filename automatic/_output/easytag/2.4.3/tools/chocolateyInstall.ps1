$packageName = 'easytag'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.gnome.org/binaries/win32/easytag/2.4/easytag-2.4.3-setup.exe'
$checksum = 'b06dab7c78bd7bd84fc459c7f88ef112e1ac84b5'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"