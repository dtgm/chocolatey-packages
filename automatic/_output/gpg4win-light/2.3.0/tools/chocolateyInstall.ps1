$packageName = 'gpg4win-light'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://files.gpg4win.org/gpg4win-light-2.3.0.exe'
$checksum = '3f8c8111b541cdb1b514d20e1962d0c5229f5871'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"