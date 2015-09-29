$packageName = 'ums'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/unimediaserver/files/Official%20Releases/Windows/UMS-5.2.3-Java7.exe/download'
$checksum = '352ae1404cd428590c5f836dcfc2394277c1d04e'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"