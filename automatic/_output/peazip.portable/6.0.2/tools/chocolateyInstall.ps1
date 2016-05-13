$packageName = 'peazip.portable'
$packageVersion = '6.0.2'
$urlArray = @('http://sourceforge.net/projects/peazip/files/6.0.2/peazip_portable-6.0.2.WINDOWS.zip', 'http://sourceforge.net/projects/peazip/files/6.0.2/peazip_portable-6.0.2.WIN64.zip')
$url = $urlArray[0]
$checksum = '470f89751db75fbc4b94ff79c2a00d9bb386a28c'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '1f9cc75f7fb785a1a4396d4e0ccf91c467b2b4a8'
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