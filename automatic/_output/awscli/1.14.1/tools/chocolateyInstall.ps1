$packageName = 'awscli'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.14.1.msi'
$checksum = 'bd919e4051d6acaf9c6febf2fa1a63cd2f3b10455dca7c3722fbd30437b491ed'
$checksumType = 'sha256'
$url64 = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.14.1.msi'
$checksum64 = '8cb38774763ec5c67f57713b7ff89dbe6466447be80c6285e6b444713aee7c1d'
$checksumType64 = 'sha256'
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