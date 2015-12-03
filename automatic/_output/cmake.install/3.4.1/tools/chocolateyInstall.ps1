$packageName = 'cmake.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://cmake.org/files/v3.4/cmake-3.4.1-win32-x86.exe'
$checksum = '08dfa89a9b803d8b20db68b99c60613c508e7b0e'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"