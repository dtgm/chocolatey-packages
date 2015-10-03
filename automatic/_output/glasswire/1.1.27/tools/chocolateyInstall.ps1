$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://www.glasswire.com/download/GlassWireSetup.exe'
$checksum = 'DA45B7A6E555CED11BD527D706DE8D81'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"