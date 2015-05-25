$packageName = 'syncany'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://get.syncany.org/dist/releases/syncany-0.4.3-alpha~x86.exe'
$checksum = '0c824f8e2cf72617a0ba2e76fdea3a317a47b174'
$checksumType = 'sha1'
$url64 = 'https://get.syncany.org/dist/releases/syncany-0.4.3-alpha~x86_64.exe'
$checksum64 = '7a470cec34d6ec31bae178356bf5b01e228719ac'
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