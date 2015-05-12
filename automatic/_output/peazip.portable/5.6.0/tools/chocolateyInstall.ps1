$packageName = 'peazip.portable'
$packageVersion = '5.6.0'
$urlArray = @('http://sourceforge.net/projects/peazip/files/5.6.0/peazip_portable-5.6.0.WINDOWS.zip/download', 'http://sourceforge.net/projects/peazip/files/5.6.0/peazip_portable-5.6.0.WIN64.zip/download')
$url = $urlArray[0]
$checksum = '058f84958cdfe548bfdf9b092c0bbe4c7a479de0'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '36220f7a991776b5719da21937890e0b3d2f1471'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"