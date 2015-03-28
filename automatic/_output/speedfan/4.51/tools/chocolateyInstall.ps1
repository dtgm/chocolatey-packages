$packageName = 'speedfan'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.almico.com/speedfan451.exe'
$checksum = 'd409c01228a758cad498c86f68aafc13a4a83eb3'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"