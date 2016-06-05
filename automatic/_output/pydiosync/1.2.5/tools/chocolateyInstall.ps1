$packageName = 'pydiosync'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://download.pydio.com/pub/pydio-sync/release/1.2.5/PydioSync-Windows32-Setup-v1.2.5.msi'
$checksum = '6f91c39b5d546dac47707a8efea9e020144f2440f8ad0efb552bfafa3bfca995'
$checksumType = 'sha256'
$url64 = 'https://download.pydio.com/pub/pydio-sync/release/1.2.5/PydioSync-Windows-Setup-v1.2.5.msi'
$checksum64 = '678a675445628f51bb3b72b4d21f4e5284ee993c0d59d09a01e4bddb3d664659'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

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