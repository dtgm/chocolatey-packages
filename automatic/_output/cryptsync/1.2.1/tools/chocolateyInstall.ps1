$packageName = 'cryptsync'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('http://sourceforge.net/projects/cryptsync-sk/files/1.2.1/CryptSync-1.2.1.msi/download', 'http://sourceforge.net/projects/cryptsync-sk/files/1.2.1/CryptSync64-1.2.1.msi/download')
$url = $urlArray[0]
$checksum = 'd18485155ac96c91dbe9d6353fdc38ac8fb8608f'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '8b00d95b4e6a59c3fc26604cd9abbf5259cf93cb'
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