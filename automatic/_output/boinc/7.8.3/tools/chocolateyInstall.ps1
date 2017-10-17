$packageName = 'boinc'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = 'https://boinc.berkeley.edu/dl/boinc_7.8.3_windows_intelx86.exe'
$checksum = 'ec7ac2cac9e46b28f72cc9335398b8a6368a7070c01c79983333551767a30669'
$checksumType = 'sha256'
$url64 = 'https://boinc.berkeley.edu/dl/boinc_7.8.3_windows_x86_64.exe'
$checksum64 = 'f26b65d7a177d3b42f1faf1a6c7ce5fbb563fd01815fde163b250346c7fcd6d5'
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