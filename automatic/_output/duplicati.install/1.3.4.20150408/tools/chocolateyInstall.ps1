$packageName = 'duplicati.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://duplicati.googlecode.com/files/Duplicati 1.3.4.msi'
$checksum = '39cb74afd45d83f29df9a3ef7881734f78a3e48c'
$checksumType = 'sha1'
$url64 = 'http://duplicati.googlecode.com/files/Duplicati%201.3.4.x64.msi'
$checksum64 = '96756e6703261d1459f6d1d8d8053cada66cdb22'
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