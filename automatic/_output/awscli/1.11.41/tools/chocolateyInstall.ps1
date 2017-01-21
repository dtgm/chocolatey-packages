$packageName = 'awscli'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.11.41.msi'
$checksum = 'f0d1c98a98368d52b557d910e57a79fa2b0a9e205fb19f534b84d06c844d9bd3'
$checksumType = 'sha256'
$url64 = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.11.41.msi'
$checksum64 = 'cee6e11443ef3b8b4508f5a14ce9894f90d3ce4963fd233cec28450406b1f577'
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