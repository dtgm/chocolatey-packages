# generated vars
$packageName = 'ilspy'
$url = 'https://github.com/icsharpcode/ILSpy/releases/download/2.3.1/ILSpy_Master_2.3.1.1855_Binaries.zip'
$checksum = '5c747a43d2dce77536a374bf9b78b6bc1fdf2a8c'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
Set-Content -Path ("$toolsDir\$packageName.exe.gui") `
            -Value $null