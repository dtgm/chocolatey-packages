$packageName = 'gpg4win'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://files.gpg4win.org/gpg4win-2.3.3.exe'
$checksum = '67e13c4f90ff6a70ad57bd31af64a238c9315308'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"