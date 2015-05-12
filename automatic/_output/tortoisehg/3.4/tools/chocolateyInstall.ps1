$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.4-x86.msi'
$checksum = '4b33e6942872a485017c223c61a9efdc800d80e7'
$checksumType = 'sha1'
$url64 = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.4-x64.msi'
$checksum64 = 'b961a7ccb10abf07265a31c700a6c749652680ef'
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