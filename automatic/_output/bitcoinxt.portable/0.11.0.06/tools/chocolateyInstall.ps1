$packageName = 'bitcoinxt.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/bitcoinxt/bitcoinxt/releases/download/v0.11F/bitcoin-xt-0.11.0-F-win32.zip'
$checksum = 'a0a34a48422fccafc8dd60cdafed45fcc206568498035f96cfbcf989c14b0b8d'
$checksumType = 'sha256'
$url64 = 'https://github.com/bitcoinxt/bitcoinxt/releases/download/v0.11F/bitcoin-xt-0.11.0-F-win64.zip'
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Write-Verbose "Creating empty sidecar so shimgen.exe creates shim for GUI rather than console"
$guiExe = Get-ChildItem -Recurse -Path $toolsDir -Include "bitcoin-qt.exe"
if ($guiExe) {
    Set-Content -Path $($guiExe.FullName+".gui") -Value $null
} else {Write-Warning "Can't find bitcoin-qt.exe installation directory"}