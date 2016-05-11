$packageName = 'awscli'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.10.27.msi'
$checksum = '0911d94a4925a106e9de01e1d328eab03a657d9b'
$checksumType = 'sha1'
$url64 = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.10.27.msi'
$checksum64 = '5f15107692a09c4461f4fd3904255f5f18a73793'
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