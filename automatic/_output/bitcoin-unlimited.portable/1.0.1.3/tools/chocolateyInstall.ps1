$packageName = 'bitcoin-unlimited.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.1.3-win32.zip'
$checksum = 'e754fdd303cbceb955929e4a1b626d6251a767665c3cea9796426b0f406bdb36'
$checksumType = 'sha256'
$url64 = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.1.3-win64.zip'
$checksum64 = '8e837b44ee71d9c7b6693320e5909cb5cd1f12580e7b828d359828bc8a06d4ee'
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