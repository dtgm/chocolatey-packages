$packageName = 'multibit-hd'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'https://multibit.org/releases/multibit-hd/multibit-hd-0.1.2//multibit-hd-windows-0.1.2.exe'
$checksum = 'f9ae71f68ceb538310b1af8fd9c4a43a1cf5ad10'
$checksumType = 'sha1'
$url64 = 'https://multibit.org/releases/multibit-hd/multibit-hd-0.1.2//multibit-hd-windows-x64-0.1.2.exe'
$checksum64 = '3d1ea34ea5ee4229834a44e2e2f8f6fa65e56fbb'
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