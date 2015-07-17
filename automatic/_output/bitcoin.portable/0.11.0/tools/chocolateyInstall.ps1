$packageName = 'bitcoin.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://bitcoin.org/bin/bitcoin-core-0.11.0/bitcoin-0.11.0-win32.zip'
$checksum = '05b2c770dd6bb14c9bb68be4f509ad80d92b1345'
$checksumType = 'sha1'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.11.0/bitcoin-0.11.0-win64.zip'
$checksum64 = '04a250b740201f28d536736470bc66ea82e7238a'
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
$zipDirName = "bitcoin-0.11.0-win"
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
