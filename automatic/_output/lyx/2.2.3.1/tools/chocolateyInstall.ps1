$packageName = 'lyx'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://ftp.lyx.org/pub/lyx/bin/2.2.3/LyX-223-Installer-1.exe'
$checksum = '76874b53647ba6b4403b5ddc58336f7400ec6cb2f0ba2a602bafb8289afb5d2d'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"