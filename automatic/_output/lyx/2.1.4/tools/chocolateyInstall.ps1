$packageName = 'lyx'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://ftp.lyx.org/pub/lyx/bin/2.1.4/LyX-2.1.4-Installer-1.exe'
$checksum = '5e00077d63f1c69083f1879b971c3bf2a5528f8a'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"