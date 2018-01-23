$packageName = 'awscli'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.14.30.msi'
$checksum = 'ad207568579ce04134a57cae94af27dce6c5e354e3c2f1ec0fa0a77cc5a7f5aa'
$checksumType = 'sha256'
$url64 = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.14.30.msi'
$checksum64 = 'e441a360685000bb4f548d4aafcf76bee6145b66652d16e5bd1a7826c7122fa5'
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