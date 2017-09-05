$packageName = 'boinc'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = 'https://boinc.berkeley.edu/dl/boinc_7.8.2_windows_intelx86.exe'
$checksum = '2b2cd09574691341961601d3c54efebf13bffb50ca93211ba360a26a1ca36358'
$checksumType = 'sha256'
$url64 = 'https://boinc.berkeley.edu/dl/boinc_7.8.2_windows_x86_64.exe'
$checksum64 = '00e857ef92ab41c36cd1b6574bc0ab633e8e4d3da6cb7683a4c2f4ab8d199fc1'
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