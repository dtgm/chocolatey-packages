# generated vars
$packageName = 'innoextract'
$url = 'http://constexpr.org/innoextract/files/innoextract-1.5-windows.zip'
$checksum = '7a0d1b5ee0bf81934efb9c36d3f491f0'

# static vars
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -Url64bit "" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"