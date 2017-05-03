$packageName = 'storjshare'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/Storj/storjshare-gui/releases/download/v5.0.0/storjshare-gui.win32.exe'
$checksum = '9812854d1fdae6f72dcfaf17f671026327d67b88ff4cd4282c1be3b8511d4b8c'
$checksumType = 'sha256'
$url64 = 'https://github.com/Storj/storjshare-gui/releases/download/v5.0.0/storjshare-gui.win64.exe'
$checksum64 = '887bb0e85ff3191f1e41fd02a94752ed8073d61b2998f20b7201ffb768f81ef6'
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