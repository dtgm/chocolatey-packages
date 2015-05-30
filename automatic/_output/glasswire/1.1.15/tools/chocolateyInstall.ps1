$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://www.glasswire.com/download/GlassWireSetup.exe'
$checksum = '18A5B4F708E3521E8D4A3ACBD786520C'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"