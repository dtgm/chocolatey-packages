$packageName = 'cryptsync'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('https://sourceforge.net/projects/cryptsync-sk/files/1.2.6/CryptSync-1.2.6.msi', 'https://sourceforge.net/projects/cryptsync-sk/files/1.2.6/CryptSync64-1.2.6.msi')
$url = $urlArray[0]
$checksum = 'be22abc1e7e60a6f52a0f5710c11dd946307f680a556906e5f659b1fbcc929e6'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '93eab4a2b3e6705983dab932522aee18fb1d1f717daf9ebb74941de492bfd126'
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