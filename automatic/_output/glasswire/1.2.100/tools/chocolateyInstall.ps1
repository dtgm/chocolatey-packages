$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.glasswire.com/GlassWireSetup.exe'
$checksum = 'F3448068ACD6BA33A9B1DC1A1296724B'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"