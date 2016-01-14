$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.6.3-x86.msi'
$checksum = 'cf3f9e556f657d99d3dacba4efeeb71f01c1daa4'
$checksumType = 'sha1'
$url64 = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.6.3-x64.msi'
$checksum64 = '28824a4a25e57954ac204f8125a77e1f32a8f4b5'
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