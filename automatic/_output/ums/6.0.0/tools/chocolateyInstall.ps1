$packageName = 'ums'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/unimediaserver/files/Official%20Releases/Windows/UMS-6.0.0-Java7.exe/download'
$checksum = 'c6b1d1ef19f5498c5d030e1b99ab79d6bdc14cff'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"