$packageName = 'syncless'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://big5sync.googlecode.com/files/Syncless 2.1.zip'
$checksum = '4e7a5cc25baa3a3aacedc5564ef2ee98cc7951d4'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"