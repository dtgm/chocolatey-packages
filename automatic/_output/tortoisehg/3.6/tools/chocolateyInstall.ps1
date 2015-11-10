$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.6.0-x86.msi'
$checksum = '5bebb177bebc71ad48c70b7b83de1e10da8424a5'
$checksumType = 'sha1'
$url64 = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.6.0-x64.msi'
$checksum64 = '03ed582cdeb380688d3b9f038245f733add3e745'
$checksumType64 = 'sha1'
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