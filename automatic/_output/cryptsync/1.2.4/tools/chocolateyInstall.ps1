$packageName = 'cryptsync'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('https://sourceforge.net/projects/cryptsync-sk/files/1.2.4/CryptSync-1.2.4.msi', 'https://sourceforge.net/projects/cryptsync-sk/files/1.2.4/CryptSync64-1.2.4.msi')
$url = $urlArray[0]
$checksum = '60db9f60e16afff61222279cdc5ff58bc1291c51'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'c6c5bfc4068fd5cb2490f8d60515d63254f3030f'
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