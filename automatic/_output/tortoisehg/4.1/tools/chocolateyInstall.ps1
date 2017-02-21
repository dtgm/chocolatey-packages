$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.1.0-x86.msi'
$checksum = 'bfcdef983c57a707fb6479c54244398c5745586e183b825def189758a8231252'
$checksumType = 'sha256'
$url64 = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.1.0-x64.msi'
$checksum64 = '5856526b8d8466bb7115cfb819e9bd7b2b69ef75eb93df08503693fa84967b7c'
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