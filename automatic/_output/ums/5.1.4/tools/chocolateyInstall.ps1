$packageName = 'ums'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/unimediaserver/files/Official%20Releases/Windows/UMS-5.1.4-Java7.exe/download'
$checksum = '8a51a7a28129509d1cc9fd79c32a7ae84f2a11b2'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"