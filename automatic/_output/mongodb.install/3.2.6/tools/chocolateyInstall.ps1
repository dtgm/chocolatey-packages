$packageName = 'mongodb.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://downloads.mongodb.org/win32/mongodb-win32-i386-3.2.6-signed.msi'
$checksum = '4b8f487e14bf4b3b3c3f789a4ffbafbf77e356ca5944597ce696feb9788c5ca5'
$checksumType = 'sha256'
$url64 = 'http://downloads.mongodb.org/win32/mongodb-win32-x86_64-3.2.6-signed.msi'
$checksum64 = '75fcbf9605b6aed9d2a0b7028e6fe371b9f2f9c69f0f1bef7bd5a4b55df50e17'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

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