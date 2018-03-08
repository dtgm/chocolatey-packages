$packageName = 'mongodb.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.3-signed.msi'
$checksum = '40a6f14bedce5160d63ff2fa230142e7fa4d0a44811eceaa2ad0b1af4596c7e0'
$checksumType = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"