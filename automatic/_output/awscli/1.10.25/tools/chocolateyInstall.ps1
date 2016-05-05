$packageName = 'awscli'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.10.25.msi'
$checksum = 'e18f06d9263d9b80593dd5688e14912eb4cf4d6a'
$checksumType = 'sha1'
$url64 = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.10.25.msi'
$checksum64 = '24b654a4c0927c647b661efaf24cb0d25d194265'
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