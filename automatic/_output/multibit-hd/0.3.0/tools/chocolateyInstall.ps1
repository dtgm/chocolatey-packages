$packageName = 'multibit-hd'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'https://multibit.org/releases/multibit-hd/multibit-hd-0.3.0//multibit-hd-windows-0.3.0.exe'
$checksum = 'cbbc02d2d6e289f724463f8abbbc2501e14760cc'
$checksumType = 'sha1'
$url64 = 'https://multibit.org/releases/multibit-hd/multibit-hd-0.3.0//multibit-hd-windows-x64-0.3.0.exe'
$checksum64 = 'b370cb9999e32bb3eaf7a795f373fb5e49116711'
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