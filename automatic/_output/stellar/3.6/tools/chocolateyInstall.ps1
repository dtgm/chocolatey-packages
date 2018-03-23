$packageName = 'stellar'
$url = 'https://github.com/stellarchat/desktop-client/releases/download/v3.6/StellarDesktopWin32-v3.6.zip'
$checksum = 'f69247f81ae9a7baf4c000fea5641d87d39de9b3ffa56bc3288a2e842ba165ae'
$checksumType = 'sha256'
$url64 = 'https://github.com/stellarchat/desktop-client/releases/download/v3.6/StellarDesktopWin64-v3.6.zip'
$checksum64 = '7b06daec38a4a817b948791b0bebfbf72a760e5bea897aeb486e9fb9077db0e7'
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