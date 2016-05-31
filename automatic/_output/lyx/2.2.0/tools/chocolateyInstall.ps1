$packageName = 'lyx'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://ftp.lyx.org/pub/lyx/bin/2.2.0/LyX-220-Installer-1.exe'
$checksum = '7f0588b36c1ba4958eaa44141c5b30659ba8b1d769577c6904e817068914f2c3'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"