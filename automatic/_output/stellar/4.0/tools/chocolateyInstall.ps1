$packageName = 'stellar'
$url = 'https://github.com/stellarchat/desktop-client/releases/download/v4.0/StellarDesktopWin32-v4.0.zip'
$checksum = '{checksum}'
$checksumType = 'sha256'
$url64 = 'https://github.com/stellarchat/desktop-client/releases/download/v4.0/StellarDesktopWin64-v4.0.zip'
$checksum64 = '{checksumx64}'
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