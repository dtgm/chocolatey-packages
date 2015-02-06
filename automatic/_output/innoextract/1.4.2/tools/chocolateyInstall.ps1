$packageName = 'innoextract'
$packageVersion = '1.4.2'
$url = 'http://constexpr.org/innoextract/files/innoextract-1.4-windows-r2.zip'
$checksum = 'f0801298dee779cb257e6233dd121f1a'
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -specificFolder "" -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"
