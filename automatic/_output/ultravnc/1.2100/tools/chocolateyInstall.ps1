$packageName = 'ultravnc'
$installerType = 'msi'
$url = 'http://www.uvnc.eu/download/1210/UltraVnc_1210_x86.msi'
$checksum = '990ba148cc8f0dc99d58419fc17a58248f21d674'
$checksumType = 'sha1'
$url64 = 'http://www.uvnc.eu/download/1210/UltraVnc_1210_X64.msi'
$checksum64 = 'e763d7579f9e87b8b40d111b48b06b2c251391e3'
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