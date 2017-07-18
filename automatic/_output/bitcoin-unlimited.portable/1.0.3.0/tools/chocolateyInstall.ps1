$packageName = 'bitcoin-unlimited.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.3.0-win32.zip'
$checksum = '376d5cdf4c2df1c4561a29ba6378ec848e74048e0f4d360d4a2802c4d122fa89'
$checksumType = 'sha256'
$url64 = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.3.0-win64.zip'
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