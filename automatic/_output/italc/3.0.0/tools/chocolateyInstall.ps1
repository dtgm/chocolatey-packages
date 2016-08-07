$packageName = 'italc'
$version = '3.0.0'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/iTALC/italc/releases/download/v3.0.0/italc-3.0.0-win32-setup.exe'
$checksum = 'cea4f5975f10c04d9b6971f25e744770'
$checksumType = 'md5'
$url64 = 'https://github.com/iTALC/italc/releases/download/v3.0.0/italc-3.0.0-win64-setup.exe'
$checksum64 = '08f1c546e50ecc568989dfbae14b2d2e'
$checksumType64 = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$url" -Url64bit "$url64" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
