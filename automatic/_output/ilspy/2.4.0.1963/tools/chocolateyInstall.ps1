# generated vars
$packageName = 'ilspy'
$url = 'https://github.com/icsharpcode/ILSpy/releases/download/v2.4/ILSpy_Master_2.4.0.1963_Binaries.zip'
$checksum = 'd334640a576b410ad6d5f1462b48c5da'

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