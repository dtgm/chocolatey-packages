$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.glasswire.com/GlassWireSetup.exe'
$checksum = '192529678125296F41CAA7D4A0C3551E'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"