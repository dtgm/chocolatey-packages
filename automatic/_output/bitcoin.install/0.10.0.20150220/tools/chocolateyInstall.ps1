$packageName = 'bitcoin.install'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/0.10.0/bitcoin-0.10.0-win32-setup.exe'
$checksum = '21ab587d3818a88d5a823379234e2b4a1d0d3d1e'
$checksumType = 'sha1'
$url64 = 'https://bitcoin.org/bin/0.10.0/bitcoin-0.10.0-win64-setup.exe'
$checksum64 = 'a35557ae18801796db6cc3e175c8ea75a943a2f3'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
