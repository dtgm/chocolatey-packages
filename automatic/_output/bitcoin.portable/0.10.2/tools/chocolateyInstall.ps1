$packageName = 'bitcoin.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://bitcoin.org/bin/bitcoin-core-0.10.2/bitcoin-0.10.2-win32.zip'
$checksum = '9fff69abb135a13dfa7a9168090c57751a58b625'
$checksumType = 'sha1'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.10.2/bitcoin-0.10.2-win64.zip'
$checksum64 = '5497ec97ad873dec4b2ca72009564ca5b5fb31a8'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

# create empty sidecar so shimgen.exe creates shim for GUI rather than console
$zipDirName = "bitcoin-0.10.2-win"
$zipDir = Join-Path -Path $toolsDir `
                    -ChildPath "$zipDirName"
if ( Test-Path $zipDir\64 ) {
  $bitDirName = 64
} elseif ( Test-Path $zipDir\32 ) {
  $bitDirName = 32
} else {
  Write-Warning "Could not locate bin folder"
}
$installFile = Join-Path -Path $bitDirName `
                         -ChildPath "bitcoin-qt.exe.gui"
Set-Content -Path "$installFile" `
            -Value $null
