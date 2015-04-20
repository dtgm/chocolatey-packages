$packageName = 'shareaza'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$urlArray = @('http://sourceforge.net/projects/shareaza/files/Shareaza/Shareaza-2.7.8.0/Shareaza_2.7.8.0_Win32.exe/download', 'http://sourceforge.net/projects/shareaza/files/Shareaza/Shareaza-2.7.8.0/Shareaza_2.7.8.0_x64.exe/download')
$url = $urlArray[0]
$checksum = '78761a2c8695e044af3ee899625849445559a5f5'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'ba0c4d5622e3694b0134dd693f49d8078edb513e'
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