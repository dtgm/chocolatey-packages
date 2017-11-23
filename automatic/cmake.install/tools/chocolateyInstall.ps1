$packageName = '{{PackageName}}'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Url "$url" `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Url64bit "$url64" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"
