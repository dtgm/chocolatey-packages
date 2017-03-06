$packageName = 'ums'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/unimediaserver/files/Official%20Releases/Windows//UMS-6.6.0-Java7.exe/download'
$checksum = '14692a869c494585afe2c5be1b2f6e0060fa6db1abf97426ef13ce85fe2bb9f5'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"