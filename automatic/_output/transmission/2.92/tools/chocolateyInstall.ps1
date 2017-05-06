$packageName = 'transmission'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://github.com/transmission/transmission/releases/download/2.92/transmission-2.92-x86.msi'
$checksum = 'f8bfaba603036d35f74bbd5d27ea5bc51fe58d991af48228c290323e406bef00'
$checksumType = 'sha256'
$url64 = 'https://github.com/transmission/transmission/releases/download/2.92/transmission-2.92-x64.msi'
$checksum64 = '8cee6436e79d48409d76a85bbb1bb506c8c76c8f686551b9e7e13b9a2ca2299d'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

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