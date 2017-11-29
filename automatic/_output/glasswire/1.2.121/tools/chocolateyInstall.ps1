$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.glasswire.com/GlassWireSetup.exe'
$checksum = '0910AB6D09A9B5858C7028D5A04D27B7'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"