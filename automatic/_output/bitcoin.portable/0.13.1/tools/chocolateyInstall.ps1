$packageName = 'bitcoin.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://bitcoin.org/bin/bitcoin-core-0.13.1/bitcoin-0.13.1-win32.zip'
$checksum = 'fcf6089fc013b175e3c5e32580afb3cb4310c62d2e133e992b8a9d2e0cbbafaa'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.13.1/bitcoin-0.13.1-win64.zip'
$checksum64 = '3956daf2c096c4002c2c40731c96057aecd9f77a559a4bc52b409cc13d1fd3f2'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

# create empty sidecar so shimgen.exe creates shim for GUI rather than console
$guiExe = Get-ChildItem -Recurse -Path $toolsDir -Include "bitcoin-qt.exe"
if ($guiExe) {Set-Content -Path $($guiExe.FullName+".gui") -Value $null}
