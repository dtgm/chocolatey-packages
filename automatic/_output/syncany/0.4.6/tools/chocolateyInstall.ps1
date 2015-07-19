$packageName = 'syncany'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://get.syncany.org/dist/releases/syncany-0.4.6-alpha~x86.exe'
$checksum = '84b7fdf10c9c5c13ecd46b6ffcb8c070a2b94337'
$checksumType = 'sha1'
$url64 = 'https://get.syncany.org/dist/releases/syncany-0.4.6-alpha~x86_64.exe'
$checksum64 = '99df215a3ad8b11ec398c0dc83c5eeea7c99ff3b'
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