# generated vars
$packageName = 'xonotic'
$url = 'http://dl.xonotic.org/xonotic-0.8.2.zip'
$checksum = '1bd46c1fb79aae42bb13e74f5a0ff46e'

# static vars
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"