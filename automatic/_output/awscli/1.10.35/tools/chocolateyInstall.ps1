$packageName = 'awscli'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.10.35.msi'
$checksum = '836ab5dd0e7a4969fd08049f8c590ed6707d48e992c6bb240a554a587a41945e'
$checksumType = 'sha256'
$url64 = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.10.35.msi'
$checksum64 = '08d29910ec63aa2e958eadda5d8ba567320b14b3b0c8510c6c1c4ed2481e432f'
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