$packageName = 'cmake.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://cmake.org/files/v3.4/cmake-3.4.3-win32-x86.exe'
$checksum = '91902bddd28e70d6369f7dc89beb87dd3e983e5c'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"