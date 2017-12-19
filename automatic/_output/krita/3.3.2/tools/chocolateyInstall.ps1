$packageName = 'krita'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.kde.org/stable/krita/3.3.2/krita-3.3.2-x86-setup.exe'
$checksum = '68ba242398883fcd19ea4eb7f7d916754bfaa86766a8e33882ef5d63c46dbd4c'
$checksumType = 'sha256'
$url64 = 'https://download.kde.org/stable/krita/3.3.2/krita-3.3.2-x64-setup.exe'
$checksum64 = 'ada15320a841bfedca98e595db2bb74763dd7315684033e8cee5ff54d50368cf'
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