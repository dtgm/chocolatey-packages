$packageName = 'popcorntime'
$installerType = 'exe'
$url = 'http://104.131.187.115/build/Popcorn-Time-0.3.7.2-Setup.exe'
$checksum = 'eaa15c3ab5b0642aca013f5212663dcd6774a5a0'
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