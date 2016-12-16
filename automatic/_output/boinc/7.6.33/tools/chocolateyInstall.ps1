$packageName = 'boinc'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = 'https://boinc.berkeley.edu/dl/boinc_7.6.33_windows_intelx86.exe'
$checksum = 'fe9eb72f7ad756d54a293fbf935323a243446ea431aaac169e5eeab99ca0fe57'
$checksumType = 'sha256'
$url64 = 'https://boinc.berkeley.edu/dl/boinc_7.6.33_windows_x86_64.exe'
$checksum64 = '611efd07027e6ab5cb376546747b6354c9319dc739d11c3be416462e8ecc9a6c'
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