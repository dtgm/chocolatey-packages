$packageName = 'systemninja.portable'
$url = 'https://singularlabs.com/download/10298/'
$checksum = '5d83c173be7646276b4ac21c2b031645495ee330'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"