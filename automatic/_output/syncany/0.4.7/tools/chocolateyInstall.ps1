$packageName = 'syncany'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://get.syncany.org/dist/releases/syncany-0.4.7-alpha~x86.exe'
$checksum = '1ac57d6bb23a1ce983c564a46df13620d25cc7e0'
$checksumType = 'sha1'
$url64 = 'https://get.syncany.org/dist/releases/syncany-0.4.7-alpha~x86_64.exe'
$checksum64 = 'ce7bc8d2bbae2cbf0abfa307ad621f90a8d8df96'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

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