$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.8.1-x86.msi'
$checksum = '24ce5a62e4aebdc46fe3322e1a77622d22791a7d'
$checksumType = 'sha1'
$url64 = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.8.1-x64.msi'
$checksum64 = '9f5a49eb63b4a16301d42c9ca3eb03a729aad46a'
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