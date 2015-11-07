$packageName = 'ultravnc'
$installerType = 'msi'
$url = 'http://www.uvnc.eu/download/1209/UltraVnc_1209_x86.msi'
$checksum = '6d686763e0cb05ea2c2f241edd1742081ddc600b'
$checksumType = 'sha1'
$url64 = 'http://www.uvnc.eu/download/1209/UltraVnc_1209_X64.msi'
$checksum64 = 'dd2db539054f333b5ac2e69d8d08219ee7ae1b80'
$checksumType64 = 'sha1'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"