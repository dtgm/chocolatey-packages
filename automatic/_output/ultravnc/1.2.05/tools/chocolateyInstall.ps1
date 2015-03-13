$packageName = 'ultravnc'
$installerType = 'msi'
$url = 'http://www.uvnc.eu/download/1205/UltraVnc_1205_x86.msi'
$checksum = '1d83decac2a9ae11d9677425870a17509644d717'
$checksumType = 'sha1'
$url64 = 'http://www.uvnc.eu/download/1205/UltraVnc_1205_X64.msi'
$checksum64 = '7a540cf12e81a6b92c14024fb75f4ea580f54c30'
$checksumType64 = 'sha1'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0)

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