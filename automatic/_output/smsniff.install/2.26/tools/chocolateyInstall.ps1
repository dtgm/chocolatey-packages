$packageName = 'smsniff.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/smsniff_setup.exe'
$checksum = '5d27a0d87186c06ed93124f5ed276040e51412ecb48c1e6d086e8f9c66d2cb34'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"