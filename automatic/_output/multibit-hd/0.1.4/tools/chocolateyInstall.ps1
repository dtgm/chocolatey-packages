$packageName = 'multibit-hd'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'https://multibit.org/releases/multibit-hd/multibit-hd-0.1.4//multibit-hd-windows-0.1.4.exe'
$checksum = 'a5468ae16e89b2f9da6a036e19c5bc66370ed18c'
$checksumType = 'sha1'
$url64 = 'https://multibit.org/releases/multibit-hd/multibit-hd-0.1.4//multibit-hd-windows-x64-0.1.4.exe'
$checksum64 = '23064f79856027e8b269a80ac6691ef1c5398f2f'
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