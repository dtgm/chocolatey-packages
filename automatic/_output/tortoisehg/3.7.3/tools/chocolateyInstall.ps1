$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.7.3-x86.msi'
$checksum = '934dadaf1dc05bad36ba3fcfc547dcea5fc533d7'
$checksumType = 'sha1'
$url64 = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.7.2-x64.msi'
$checksum64 = '6db987fa58bee0bf1e10db45dbb0141e37aa258a'
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