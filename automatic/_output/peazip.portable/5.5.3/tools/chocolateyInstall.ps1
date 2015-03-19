$packageName = 'peazip.portable'
$packageVersion = '5.5.3'
$urlArray = @('http://sourceforge.net/projects/peazip/files/5.5.3/peazip_portable-5.5.3.WINDOWS.zip/download', 'http://sourceforge.net/projects/peazip/files/5.5.3/peazip_portable-5.5.3.WIN64.zip/download')
$url = $urlArray[0]
$checksum = '43b5fefa620b1d5ac20ec84921c12e200db46be7'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'df53d42b2ac227aa441a56866a8ea65549c3627e'
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