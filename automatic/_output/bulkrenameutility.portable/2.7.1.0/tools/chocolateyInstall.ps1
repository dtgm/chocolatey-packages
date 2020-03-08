$packageName = 'bulkrenameutility.portable'
$url = 'http://www.bulkrenameutility.co.uk//Downloads/BRU_NoInstall.zip'
$checksum = '5cf7bf6622d9738c399e40b53f6767c638a7d9c1'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"