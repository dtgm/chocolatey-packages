$packageName = 'shareaza'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$urlArray = @('https://sourceforge.net/projects/shareaza/files/Shareaza/Shareaza-2.7.10.2/Shareaza_2.7.10.2_Win32.exe/download', 'https://sourceforge.net/projects/shareaza/files/Shareaza/Shareaza-2.7.10.2/Shareaza_2.7.10.2_x64.exe/download')
$url = $urlArray[0]
$checksum = 'e64c214e042f822c0e2d15ab388e2f61088098bfb3a6ee3dc665a50d07ff3cdf'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha256'
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