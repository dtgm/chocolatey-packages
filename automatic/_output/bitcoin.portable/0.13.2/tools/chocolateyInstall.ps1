$packageName = 'bitcoin.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://bitcoin.org/bin/bitcoin-core-0.13.2/bitcoin-0.13.2-win32.zip'
$checksum = '4d1c26675088219d8e2204b5a9f028916d5982db860298a70b6ed08e30af2a53'
$checksumType = 'sha256'
$url64 = 'https://bitcoin.org/bin/bitcoin-core-0.13.2/bitcoin-0.13.2-win64.zip'
$checksum64 = 'e07ce2a8cc0913fb253a42073fd3b94921da7f916366dd0534f3b24cad7a733e'
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
