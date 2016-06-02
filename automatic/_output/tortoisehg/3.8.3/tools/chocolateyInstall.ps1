$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.8.3-x86.msi'
$checksum = 'e19bc3ca0083cb5e18a59aadcf74860b09b4f3f5558e1a559c275508ddcd3be9'
$checksumType = 'sha256'
$url64 = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.8.3-x64.msi'
$checksum64 = '31faad5d4bad1e8b3c61d409e7373af42e9196d2545810f8dc34dc31da1963a3'
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