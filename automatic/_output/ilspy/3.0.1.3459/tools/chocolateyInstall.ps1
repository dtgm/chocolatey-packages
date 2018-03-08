# generated vars
$packageName = 'ilspy'
$url = 'https://github.com/icsharpcode/ILSpy/releases/download/v3.0.1/ILSpy_binaries_Net46_Win_3.0.1.3459.zip'
$checksum = '2d78fd5bdc33666b408976cfb62bc639'

# static vars
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
Set-Content -Path ("$toolsDir\$packageName.exe.gui") `
            -Value $null