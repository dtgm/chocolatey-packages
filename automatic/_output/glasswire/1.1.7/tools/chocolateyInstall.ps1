$packageName = 'glasswire'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://www.glasswire.com/download/GlassWireSetup.exe'
$checksum = 'ABB11C7C80D94D088FD235E11CFC2123'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"