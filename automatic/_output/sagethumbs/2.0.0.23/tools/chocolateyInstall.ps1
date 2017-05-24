$packageName = 'sagethumbs'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/sagethumbs/files/sagethumbs_2.0.0.23_setup.exe/download'
$checksum = '705d743e28b487e34a4a7245a0dbc303a10e45ba0fd9e4da4101c8cdf506839a'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"