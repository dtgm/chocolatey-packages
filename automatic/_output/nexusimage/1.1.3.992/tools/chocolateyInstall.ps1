$packageName = 'nexusimage'
$url = 'http://www.xiles.net/pds/NexusImage1.1.3.zip'
$checksum = '21c5b9048d8866773ee6c334de95759655193091'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"