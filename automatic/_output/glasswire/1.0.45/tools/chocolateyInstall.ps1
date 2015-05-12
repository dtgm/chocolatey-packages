$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://www.glasswire.com/download/GlassWireSetup.exe'
$checksum = 'C0733DEE0A565FF22C2C4CADD47B9F06'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"