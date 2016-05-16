$packageName = 'ultravnc'
$installerType = 'msi'
$url = 'http://www.uvnc.eu/download/1211/UltraVnc_1211_x86.msi'
$checksum = 'd47e73890f8796972325c78b13e2dfdb7961b571'
$checksumType = 'sha1'
$url64 = 'http://www.uvnc.eu/download/1211/UltraVnc_1211_X64.msi'
$checksum64 = 'b432b009aca1ec73ab16d12858f9b01ec7c167dc'
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