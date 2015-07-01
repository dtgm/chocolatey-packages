$packageName = 'systemninja.portable'
$url = 'https://singularlabs.com/download/10298/'
$checksum = 'd6b64456578659f7c6c9ab56fe00e0536bca9a11'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"