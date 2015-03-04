$packageName = 'iconizer'
# hack to overcome limitations of Ketarin/ChocoPkgUp when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/iconizer/files/IconizerBin32.zip/download', 'http://sourceforge.net/projects/iconizer/files/IconizerBin64.zip/download')
$url = $urlArray[0]
$url64 = $urlArray[1]
$checksum = '2c072a2d3210227120c9c780ab73ca9fb40446d8'
$checksumType = 'sha1'
$checksum64 = '1af2f8f1eda91eeb06243797c22e22e8c5f163fc'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Set-Content -Path ("$toolsDir\$packageName.exe.gui") -Value $null
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
