$packageName = 'install4j.portable'
$url = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows_6_1_3.zip'
$checksum = '9203e0ed7df63dd0375af7ba674d0e7bbecfda352b3a2003260f048fc7534823'
$checksumType = 'sha256'
$url64 = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_6_1_3.zip'
$checksum64 = '1027fc2586c439dd162bcca898d591db310a9085c03ec47121d8ee86607a8633'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"