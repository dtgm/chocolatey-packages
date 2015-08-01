$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://www.glasswire.com/download/GlassWireSetup.exe'
$checksum = '3DAB5A227A5EA55ACC7C052FA8BEA6C1'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"