$packageName = 'popcorntime'
$installerType = 'exe'
$url = 'https://get.popcorntime.io/build/Popcorn-Time-0.3.8-0-Setup.exe'
$checksum = 'd50552ae9bc67b03bebc7943c9722dab718f721a'
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