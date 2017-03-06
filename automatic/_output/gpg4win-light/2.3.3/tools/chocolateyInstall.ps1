$packageName = 'gpg4win-light'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://files.gpg4win.org/gpg4win-light-2.3.3.exe'
$checksum = '71a3ed36a8af2ef14c7ac4d2d25fa2fef9eaa13b'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"