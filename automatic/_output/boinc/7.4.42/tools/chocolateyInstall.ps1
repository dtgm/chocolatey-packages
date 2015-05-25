$packageName = 'boinc'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = 'http://boinc.berkeley.edu/dl/boinc_7.4.42_windows_intelx86.exe'
$checksum = '614cb73c5fa377bd4724c7546f61bf1d66ec9897'
$checksumType = 'sha1'
$url64 = 'http://boinc.berkeley.edu/dl/boinc_7.4.42_windows_x86_64.exe'
$checksum64 = '77ab918fed8fff001cfdba3970b0422711bc2b13'
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