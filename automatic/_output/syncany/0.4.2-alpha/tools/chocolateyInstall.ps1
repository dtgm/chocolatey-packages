$packageName = 'syncany'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://get.syncany.org/dist/releases/syncany-0.4.2-alpha~x86.exe'
$checksum = 'ad6eb9967af5ab4e529c8929e0acbdab29a4e63d'
$checksumType = 'sha1'
$url64 = 'https://get.syncany.org/dist/releases/syncany-0.4.2-alpha~x86_64.exe'
$checksum64 = '6c4e547e38990d99e755d8ea7ff02958394348f7'
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