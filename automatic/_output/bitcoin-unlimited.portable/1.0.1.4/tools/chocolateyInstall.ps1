$packageName = 'bitcoin-unlimited.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.1.4-win32.zip'
$checksum = 'e8e54d9b97ec95995757c704fa0ed26fafe5f7074a53b0e1b3ab6e812f285675'
$checksumType = 'sha256'
$url64 = 'https://www.bitcoinunlimited.info/downloads/bitcoinUnlimited-1.0.1.4-win64.zip'
$checksum64 = 'b6794eb169ff404583cc491db106e1e22479b415ebfea97eec18bce13c2158fb'
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