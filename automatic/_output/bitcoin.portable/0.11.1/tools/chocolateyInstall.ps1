$packageName = 'bitcoin.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://bitcoin.org/bin/bitcoin-core-0.11.1/bitcoin-0.11.1-win32.zip'
$checksum = '5ff3129fb64b6dc5ea28aa90e8302ac8d57ca579'
$checksumType = 'sha1'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.11.1/bitcoin-0.11.1-win64.zip'
$checksum64 = 'e3cf4d8417d57056d70bff52a70f0938dc3dbe12'
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
$zipDirName = "bitcoin-0.11.1-win"
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
