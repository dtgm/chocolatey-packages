$packageName = 'multibit-hd'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'https://multibit.org/releases/multibit-hd/multibit-hd-0.1.1//multibit-hd-windows-0.1.1.exe'
$checksum = '2893127933138b2207a4de1d108a020299f02306'
$checksumType = 'sha1'
$url64 = 'https://multibit.org/releases/multibit-hd/multibit-hd-0.1.1//multibit-hd-windows-x64-0.1.1.exe'
$checksum64 = '3a10beccd5e023e44baad44d7db4609ac5a3e8ce'
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