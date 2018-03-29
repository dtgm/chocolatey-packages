$packageName = 'gsmartcontrol'
$installerType = 'exe'
$silentArgs = '/S'
$urlArray = @('https://sourceforge.net/projects/gsmartcontrol/files/1.1.3/gsmartcontrol-1.1.3-win32.exe/download', 'https://sourceforge.net/projects/gsmartcontrol/files/1.1.3/gsmartcontrol-1.1.3-win64.exe/download')
$url = $urlArray[0]
$checksum = '29aa1b4b71677e9e01657325bd214402dcd0724cc5a65f4ff30aab487f990792'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = 'f33064b67b7399bea4d106862afe3a6f36edf7200a7b6b1be68a39fed4e39e6d'
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