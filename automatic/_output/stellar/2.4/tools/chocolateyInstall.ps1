$packageName = 'stellar'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/stellarchat/desktop-client/releases/download/v2.4/StellarDesktopWin32-v2.4.zip'
$checksum = 'fe71c3f56e6850b1fc3e1f5334229ae0ae97fdec339c729fd8b51a0ea75e8032'
$checksumType = 'sha256'
$url64 = 'https://github.com/stellarchat/desktop-client/releases/download/v2.4/StellarDesktopWin64-v2.4.zip'
$checksum64 = 'c4a58bd76f38a7d3987681883065a1b48d377142b5a5250a8e5df641c8e9681d'
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
$guiExe = Get-ChildItem -Recurse -Path $toolsDir -Include "StellarWallet.exe"
if ($guiExe) {
    Set-Content -Path $($guiExe.FullName+".gui") -Value $null
} else {Write-Warning "Can't find StellarWallet.exe installation directory"}