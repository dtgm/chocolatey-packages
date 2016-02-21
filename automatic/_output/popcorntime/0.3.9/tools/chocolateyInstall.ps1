$packageName = 'popcorntime'
$installerType = 'exe'
$url = 'https://get.popcorntime.sh/build/Popcorn-Time-0.3.9-Setup.exe'
$checksum = 'a99d252cb6480bb11445a36a1c2389077c48fd98'
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