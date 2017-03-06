$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.9.0-x86.msi'
$checksum = '1e0e8509f0e192af2ecedf9676774b3640df5f03946724896595d18ae6e0c0dc'
$checksumType = 'sha256'
$url64 = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-3.9.0-x64.msi'
$checksum64 = '815da4940e2d67ec567d2fa49c32db20deca1f6b6389a0d341b15d853d7e5c9e'
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