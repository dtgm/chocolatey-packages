$packageName = 'bitcoin.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://bitcoin.org/bin/bitcoin-core-0.13.0/bitcoin-0.13.0-win32.zip'
$checksum = '5c5bd6d31e4f764e33f2f3034e97e34789c3066a62319ae8d6a6011251187f7c'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.13.0/bitcoin-0.13.0-win64.zip'
$checksum64 = '54606c9a4fd32b826ceab4da9335d7a34a380859fa9495bf35a9e9c0dd9b6298'
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
