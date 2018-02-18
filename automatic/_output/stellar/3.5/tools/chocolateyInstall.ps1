$packageName = 'stellar'
$url = 'https://github.com/stellarchat/desktop-client/releases/download/v3.5/StellarDesktopWin32-v3.5.zip'
$checksum = 'f754426765d7af824ee1ed55f317a7c4598bf8a594dac1541c3f089cda1bf68c'
$checksumType = 'sha256'
$url64 = 'https://github.com/stellarchat/desktop-client/releases/download/v3.5/StellarDesktopWin64-v3.5.zip'
$checksum64 = '46b4dfef3ddd18fceddad7f49edaecd82654a78d22c46acdef9a3d925e2052cd'
$checksumType64 = 'sha256'
$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Write-Verbose "Creating empty sidecar so shimgen.exe creates shim for GUI rather than console"
$guiExe = Get-ChildItem -Recurse -Path $toolsDir -Include "StellarWallet.exe"
if ($guiExe) {
    Set-Content -Path $($guiExe.FullName+".gui") -Value $null
} else {Write-Warning "Can't find StellarWallet.exe installation directory"}