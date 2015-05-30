$packageName = 'adblockplusie'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://downloads.adblockplus.org/adblockplusie-1.4-x86.msi'
$checksum = '1e602a153eae9e68767861f8bc75fb175367addc'
$checksumType = 'sha1'
$url64 = 'https://downloads.adblockplus.org/adblockplusie-1.4-x64.msi'
$checksum64 = '4d829e032709874141652183d3451c547f769fc0'
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