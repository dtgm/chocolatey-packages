$packageName = 'cmake.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://cmake.org/files/v3.8/cmake-3.8.0-win64-x64.msi'
$checksum = '1abb378901f3650b432819fe026e445b03d288ea7cf8edeab2a94d41fa5472b7'
$checksumType = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"