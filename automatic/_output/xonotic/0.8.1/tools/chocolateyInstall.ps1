# generated vars
$packageName = 'xonotic'
$url = 'http://dl.xonotic.org/xonotic-0.8.1.zip'
$checksum = 'f7a9cd8ab68a00336acca164f983b569'

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