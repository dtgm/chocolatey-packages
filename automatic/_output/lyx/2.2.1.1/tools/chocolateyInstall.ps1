$packageName = 'lyx'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://ftp.lyx.org/pub/lyx/bin/2.2.1/LyX-221-Installer-1.exe'
$checksum = 'c31fd476b9ff96e1d140ca22725d78efd99de5fad2ba8c39a3b15a75622f239b'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"