$packageName = 'awscli'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/aws-cli/AWSCLI32.msi'
$checksum = '0cc180ef5aead6a8fee71b5e53fa323a3baef3e9'
$checksumType = 'sha1'
$url64 = 'https://s3.amazonaws.com/aws-cli/AWSCLI64.msi'
$checksum64 = '14ff74f780ee7baddeae1eee603a334e6cd40a98'
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