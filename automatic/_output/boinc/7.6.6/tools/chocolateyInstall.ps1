$packageName = 'boinc'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = 'http://boinc.berkeley.edu/dl/boinc_7.6.6_windows_intelx86.exe'
$checksum = '{checksum}'
$checksumType = 'sha1'
$url64 = 'http://boinc.berkeley.edu/dl/boinc_7.6.6_windows_x86_64.exe'
$checksum64 = '{checksumx64}'
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