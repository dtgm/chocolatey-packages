$packageName = 'polipo'
$url = 'http://www.pps.univ-paris-diderot.fr/~jch/software/files/polipo/polipo-1.1.0-win32.zip'
$checksum = '29aa74df2b22997d80b4a96c5028c8baceab0a89'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"