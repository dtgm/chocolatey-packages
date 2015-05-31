# generated vars
$packageName = 'xonotic'
$url = 'http://dl.xonotic.org/xonotic-0.8.0.zip'
$checksum = 'bc368e116a2502362e1d4f07d8f8efab'

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