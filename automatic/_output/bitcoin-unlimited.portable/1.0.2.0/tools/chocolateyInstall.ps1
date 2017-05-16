$packageName = 'bitcoin-unlimited.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.2.0-win32.zip'
$checksum = 'f42b1501171c9250b56fb39d783b28f7711c064b5edbcdd7072d38bdc859b350'
$checksumType = 'sha256'
$url64 = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.2.0-win64.zip'
$checksum64 = '0d002a76f2a310be44b72b423efc5cecc1802f08df8819d648779ef945b433cd'
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