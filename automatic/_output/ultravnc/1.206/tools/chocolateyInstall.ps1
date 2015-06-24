$packageName = 'ultravnc'
$installerType = 'msi'
$url = 'http://www.uvnc.eu/download/1206/UltraVnc_1206_x86.msi'
$checksum = '0fbedc42c73233b08bf4e4ca39236e15117d3863'
$checksumType = 'sha1'
$url64 = 'http://www.uvnc.eu/download/1206/UltraVnc_1206_X64.msi'
$checksum64 = '1e8dd3e5ce0e085e1aa229174dbc379da17431ea'
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