# generated vars
$packageName = 'innoextract'
$url = 'http://constexpr.org/innoextract/files/innoextract-1.6-windows.zip'
$checksum = 'e3abf26e436c8f1858e2e06a67a37b60'

# static vars
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"