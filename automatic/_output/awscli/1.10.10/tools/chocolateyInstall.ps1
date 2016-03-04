$packageName = 'awscli'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/aws-cli/AWSCLI32.msi'
$checksum = 'd7a49e34555e29fe48d88bb213d7c27d814894ce'
$checksumType = 'sha1'
$url64 = 'https://s3.amazonaws.com/aws-cli/AWSCLI64.msi'
$checksum64 = 'd79d1c8607cf7e7caed0eff6bbc47cf0e64f5271'
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