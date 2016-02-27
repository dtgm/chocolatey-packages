$packageName = 'peazip.portable'
$packageVersion = '6.0.0'
$urlArray = @('http://sourceforge.net/projects/peazip/files/6.0.0/peazip_portable-6.0.0.WINDOWS.zip', 'http://sourceforge.net/projects/peazip/files/6.0.0/peazip_portable-6.0.0.WIN64.zip')
$url = $urlArray[0]
$checksum = '47049c688dc321490c9d49414be0aff464207b1d'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'e809876674763cebc18aadd0cbc168e91a20383a'
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