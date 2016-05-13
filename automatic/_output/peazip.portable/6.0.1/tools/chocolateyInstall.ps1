$packageName = 'peazip.portable'
$packageVersion = '6.0.1'
$urlArray = @('http://sourceforge.net/projects/peazip/files/6.0.1/peazip_portable-6.0.1.WINDOWS.zip', 'http://sourceforge.net/projects/peazip/files/6.0.1/peazip_portable-6.0.1.WIN64.zip')
$url = $urlArray[0]
$checksum = '4aaa93218e32379d65899190a30e5463dc75ef81'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'ee8274e1b5036fd56e921f12789ef1aea5e00977'
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