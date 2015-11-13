$packageName = 'cmake.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://cmake.org/files/v3.4/cmake-3.4.0-win32-x86.exe'
$checksum = '947093dfa2845dc4c4f602207cce7b5ebe389501'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"