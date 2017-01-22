$packageName = 'ums'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/unimediaserver/files/Official%20Releases/Windows//UMS-6.5.3-Java7.exe/download'
$checksum = 'd8bb2166171fd8bcf629699404e4013a2e1fa19ddbb020d01e24a50e3dabf593'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"