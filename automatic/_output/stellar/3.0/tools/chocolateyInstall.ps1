$packageName = 'stellar'
$url = 'https://github.com/stellarchat/desktop-client/releases/download/v3.0/StellarDesktopWin32-v3.0.zip'
$checksum = '71a6072413b760728b9f729088e12d8f2ad29fcf1be17d4a2f5826a4f1a0b79a'
$checksumType = 'sha256'
$url64 = 'https://github.com/stellarchat/desktop-client/releases/download/v3.0/StellarDesktopWin64-v3.0.zip'
$checksum64 = '3a39caef382ffca0ddf904585422710ed3505b87b15b95b4d0e2d941ca2dbcb2'
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