$packageName = 'boinc'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = 'http://boinc.berkeley.edu/dl/boinc_7.6.9_windows_intelx86.exe'
$checksum = '4ddd469c0f7f76d5b2fb2b6de858c12fbf059333'
$checksumType = 'sha1'
$url64 = 'http://boinc.berkeley.edu/dl/boinc_7.6.9_windows_x86_64.exe'
$checksum64 = 'bce9a8ef420681ddd7c4194b0be2de0163b1e508'
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