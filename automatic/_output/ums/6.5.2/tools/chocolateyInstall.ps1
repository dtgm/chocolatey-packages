$packageName = 'ums'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'https://sourceforge.net/projects/unimediaserver/files/Official%20Releases/Windows//UMS-6.5.2-Java7.exe/download'
$checksum = 'be8a73751fabd99669a7524dd58a047a8d224f19271d4f3a4f540f26a55404c6'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"