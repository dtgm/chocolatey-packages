$packageName = 'cryptsync'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('https://sourceforge.net/projects/cryptsync-sk/files/1.2.7/CryptSync-1.2.7.msi', 'https://sourceforge.net/projects/cryptsync-sk/files/1.2.7/CryptSync64-1.2.7.msi')
$url = $urlArray[0]
$checksum = '441c7f1427d7e8b0bd37c1625657ac7f845dfec990fa2b5499dd7b753d784240'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = 'b702e6cf3e01e7bcfbf591d62d6dc0cafc9b7843ab41f2d4a30651fab096aade'
$checksumType64 = 'sha256'
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