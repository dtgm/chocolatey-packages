$packageName = 'peazip.portable'
$packageVersion = '5.6.1'
$urlArray = @('http://sourceforge.net/projects/peazip/files/5.6.1/peazip_portable-5.6.1.WINDOWS.zip/download', 'http://sourceforge.net/projects/peazip/files/5.6.1/peazip_portable-5.6.1.WIN64.zip/download')
$url = $urlArray[0]
$checksum = '916721a5d2546f091468e76334544278935a23bc'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'c254e6be0693eabe72303b378c7f13c0cac2dff6'
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