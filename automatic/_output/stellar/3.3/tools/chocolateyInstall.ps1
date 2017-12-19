$packageName = 'stellar'
$url = 'https://github.com/stellarchat/desktop-client/releases/download/v3.3/StellarDesktopWin32-v3.3.zip'
$checksum = 'fd8543b80c78d78625265f0e751c6e25a461af67dc0e477447134f67379615b3'
$checksumType = 'sha256'
$url64 = 'https://github.com/stellarchat/desktop-client/releases/download/v3.3/StellarDesktopWin64-v3.3.zip'
$checksum64 = '48925cb6f705c04c81931e31972aaced266764ec0d9d5589cb30a80e0be39c03'
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