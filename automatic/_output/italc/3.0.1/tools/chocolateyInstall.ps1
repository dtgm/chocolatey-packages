$packageName = 'italc'
$version = '3.0.1'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/iTALC/italc/releases/download/v3.0.1/italc-3.0.1-win32-setup.exe'
$checksum = '2bd2b45e017187e4f34ea32db02ee66f'
$checksumType = 'md5'
$url64 = 'https://github.com/iTALC/italc/releases/download/v3.0.1/italc-3.0.1-win64-setup.exe'
$checksum64 = 'd764b0e00e866fe6093f95c282054f9f'
$checksumType64 = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$url" -Url64bit "$url64" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
