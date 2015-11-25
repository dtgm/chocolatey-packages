$packageName = 'gpg4win'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://files.gpg4win.org/gpg4win-2.3.0.exe'
$checksum = '88d90ee9a1ea3e66b198ea866063140b882444d5'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"