$packageName = 'mongodb.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://downloads.mongodb.org/win32/mongodb-win32-i386-3.2.8-signed.msi'
$checksum = '864b2e10def543412adb876e84d04b5b982a6dcf65dd3d339d47af2eea558f0d'
$checksumType = 'sha256'
$url64 = 'http://downloads.mongodb.org/win32/mongodb-win32-x86_64-3.2.8-signed.msi'
$checksum64 = '5c1846ef46dc3345f0c8eccace841a1a7c4165795292e535a331d0010bd8e921'
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