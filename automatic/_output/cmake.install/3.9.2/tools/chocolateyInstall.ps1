$packageName = 'cmake.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://cmake.org/files/v3.9/cmake-3.9.2-win64-x64.msi'
$checksum = 'fdf145b877bea1d1fdac338b582404c48bf371c0b0d001f4c6ec29c018f1caf5'
$checksumType = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"