$packageName = 'boinc'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = 'http://boinc.berkeley.edu/dl/boinc_7.6.22_windows_intelx86.exe'
$checksum = 'fbcd6f95fd52114d09c47004b56c2af8b9e1d898'
$checksumType = 'sha1'
$url64 = 'http://boinc.berkeley.edu/dl/boinc_7.6.22_windows_x86_64.exe'
$checksum64 = '934c64abbc7b55345802cc71b9cdaddf90e24d61'
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