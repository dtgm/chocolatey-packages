$packageName = 'rawwrite'
$url = 'http://www.chrysocome.net//downloads/rawwritewin-0.7.zip'
$checksum = 'fdafe19d88add869afde8eb35b5e863243b37b5d'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage  -PackageName "$packageName" `
                              -Url "$url" `
                              -UnzipLocation "$toolsDir" `
                              -Url64bit "" `
                              -Checksum "$checksum" `
                              -ChecksumType "$checksumType"