$packageName = 'krita'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.kde.org/stable/krita/3.2.1/krita-3.2.1-x86-setup.exe'
$checksum = 'c64641b65cf3fe4731efe7424c79ce25c7d74ed6a399cdff975e727730912d37'
$checksumType = 'sha256'
$url64 = 'https://download.kde.org/stable/krita/3.2.1/krita-3.2.1-x64-setup.exe'
$checksum64 = '1c99e4b79725ce0dff04ab6607df71d0d2a7de8acc1ab1fa5a780b88e1bb2794'
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