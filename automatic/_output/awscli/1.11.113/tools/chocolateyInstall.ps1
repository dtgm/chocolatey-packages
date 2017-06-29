$packageName = 'awscli'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.11.113.msi'
$checksum = '362caacc1c0164eae44c8579c74f10353ed30eaa0ca0b9663b95b32f8254d5b9'
$checksumType = 'sha256'
$url64 = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.11.113.msi'
$checksum64 = '16ea9b2e5c7549b01f68468c6c587e06868b054cd600a1f9007d3599751f14f7'
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