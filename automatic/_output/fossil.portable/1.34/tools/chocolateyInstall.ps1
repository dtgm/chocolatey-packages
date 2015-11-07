$packageName = 'fossil.portable'
$url = 'https://www.fossil-scm.org/download/fossil-w32-1.34.zip'
$checksum = 'b5913abcae05b9b461d0fa2422b6a184fc2a1786'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"