$packageName = 'shareaza'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$urlArray = @('http://sourceforge.net/projects/shareaza/files/Shareaza/Shareaza-2.7.9.0/Shareaza_2.7.9.0_Win32.exe/download', 'http://sourceforge.net/projects/shareaza/files/Shareaza/Shareaza-2.7.9.0/Shareaza_2.7.9.0_x64.exe/download')
$url = $urlArray[0]
$checksum = 'c80866053e14b4dcb348fe73b3adab74422b8681'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '8cc75e6ac0b4024f328261dc1d658d6614b24ced'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"