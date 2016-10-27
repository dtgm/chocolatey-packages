$packageName = 'mongodb.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://downloads.mongodb.org/win32/mongodb-win32-i386-3.2.10-signed.msi'
$checksum = 'da330528bd7b284a1cfb649b377ce175a07680a5a8ba946801cdb87682f18f3c'
$checksumType = 'sha256'
$url64 = 'http://downloads.mongodb.org/win32/mongodb-win32-x86_64-3.2.10-signed.msi'
$checksum64 = 'e9844fc0511a5ba14ee923b7737d7d0837b6d718471a62273ee75c066ffe2e5f'
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