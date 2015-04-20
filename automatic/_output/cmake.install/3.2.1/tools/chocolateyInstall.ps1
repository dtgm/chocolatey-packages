$packageName = 'cmake.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.cmake.org/files/v3.2/cmake-3.2.1-win32-x86.exe'
$checksum = 'c8e679317e26f90a31e67903ce4d8b3f316c09be'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"