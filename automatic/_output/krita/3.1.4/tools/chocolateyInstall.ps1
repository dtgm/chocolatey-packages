$packageName = 'krita'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.kde.org/stable/krita/3.1.4/krita-3.1.4-x86-setup.exe'
$checksum = 'c79b9c365bc3c2f2a759a537bb17eb7152d0d25d1bb36856511d8aa2d01e585e'
$checksumType = 'sha256'
$url64 = 'https://download.kde.org/stable/krita/3.1.4/krita-3.1.4-x64-setup.exe'
$checksum64 = 'b5076c1357829b0936cc2a358e70505557571e13e57d6661b62e76fc3b676822'
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