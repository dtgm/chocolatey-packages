$packageName = '{{PackageName}}'
# hack to overcome limitations of Ketarin/ChocoPkgUp when using repos like sf.net
$urlArray = {{DownloadUrlx64}}
$url = $urlArray[0]
$url64 = $urlArray[1]
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Set-Content -Path ("$toolsDir\$packageName.exe.gui") -Value $null
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
