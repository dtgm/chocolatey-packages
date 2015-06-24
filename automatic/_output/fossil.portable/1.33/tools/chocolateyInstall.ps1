$packageName = 'fossil.portable'
$url = 'https://www.fossil-scm.org/download/fossil-w32-1.33.zip'
$checksum = '6201536163d7ff59817da8b13574e2ad139e2132'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"