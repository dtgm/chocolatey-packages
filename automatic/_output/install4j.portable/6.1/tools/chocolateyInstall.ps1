$packageName = 'install4j.portable'
$url = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows_6_1.zip'
$checksum = 'e3164bc9cf69a001a2e9b2a1526bf6b2e519e19e'
$checksumType = 'sha1'
$url64 = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_6_1.zip'
$checksum64 = '853e01460514d2904808e93c285c1212c318214d'
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