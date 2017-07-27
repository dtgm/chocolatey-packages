$packageName = 'stellar'
$url = 'https://github.com/stellarchat/desktop-client/releases/download/v2.9/StellarDesktopWin32-v2.9.zip'
$checksum = 'c11237a1424340d5eff6148b6004753c475e77f4fa00eded65d9e97cedf2651f'
$checksumType = 'sha256'
$url64 = 'https://github.com/stellarchat/desktop-client/releases/download/v2.9/StellarDesktopWin64-v2.9.zip'
$checksum64 = '3dda13cd27fc0870339b54d05080b0261bea21dce168e89fb6137e7d16cfffcd'
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