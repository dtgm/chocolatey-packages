$packageName = 'cryptsync'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('http://sourceforge.net/projects/cryptsync-sk/files/1.2.2/CryptSync-1.2.2.msi/download', 'http://sourceforge.net/projects/cryptsync-sk/files/1.2.2/CryptSync64-1.2.2.msi/download')
$url = $urlArray[0]
$checksum = 'e353d15d39c71c513afb4effbc7b8fd21e395a2f'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
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