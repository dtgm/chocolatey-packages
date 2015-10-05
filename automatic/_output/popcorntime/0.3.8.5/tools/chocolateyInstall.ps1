$packageName = 'popcorntime'
$installerType = 'exe'
$url = 'https://get.popcorntime.io/build/Popcorn-Time-0.3.8-5-Setup.exe'
$checksum = '634bc934996a360781db8fb0237172d542c91c1c'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"