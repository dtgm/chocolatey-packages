$packageName = 'cccp'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.cccp-project.net/public/Combined-Community-Codec-Pack-2015-10-18.exe'
$checksum = 'f07c083cc90fdf3156b68812be5ad73b0c051bc5'
$checksumType = 'sha1'
$url64 = 'http://www.cccp-project.net/public/Combined-Community-Codec-Pack-64bit-2015-10-18.exe'
$checksum64 = '7669315495c56a38bc72bfc9af7ec2e146f764a4'
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