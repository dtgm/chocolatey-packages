$packageName = 'ums'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/unimediaserver/files/Official%20Releases/Windows/UMS-5.3.0-Java7.exe/download'
$checksum = 'c141da5f37c3e708f92ae924d336fea2823e090d'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"