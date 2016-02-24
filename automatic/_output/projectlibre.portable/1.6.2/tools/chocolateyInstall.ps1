$packageName = 'projectlibre.portable'
$url = 'https://sourceforge.net/projects/projectlibre/files/ProjectLibre/1.6.2/projectlibre-1.6.2.zip/download'
$checksum = '37be5a8c0ee104f52a235b521c4d731658a1f002'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"