$packageName = 'cmake.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://cmake.org/files/v3.7/cmake-3.7.0-win64-x64.msi'
$checksum = 'c56d59dc74e9baf3879c01bfbc6d999b4b37fab9771aae876bd5f47298ce2cc7'
$checksumType = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"