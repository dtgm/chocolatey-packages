$packageName = 'systemninja.portable'
$url = 'https://singularlabs.com/download/10298/'
$checksum = '7100e6b670088dac5ee673b65b747cc982bfbe6b92d14998c63aec66a6c3d9e7'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"