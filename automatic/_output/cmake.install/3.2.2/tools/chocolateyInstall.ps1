$packageName = 'cmake.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.cmake.org/files/v3.2/cmake-3.2.2-win32-x86.exe'
$checksum = 'ab1216f32fb050ee976253020a276bb29a6f44ba'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"