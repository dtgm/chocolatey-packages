$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.glasswire.com/GlassWireSetup.exe'
$checksum = 'BFC38D8A0F04C926931104666B3892F5'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"