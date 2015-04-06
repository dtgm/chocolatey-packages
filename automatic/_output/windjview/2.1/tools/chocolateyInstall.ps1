$packageName = 'windjview'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/windjview/files/WinDjView/2.1/WinDjView-2.1-Setup.exe/download'
$checksum = 'bbf32f86dc8db03a73c1331a04d73b41bc80c52b'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"