$packageName = 'nexusfile.portable'
$url = 'http://www.xiles.net/pds/nexusfile5.3.3.zip'
$checksum = '73f5d57cfbe8e811f853a9d43139443ac50141d6'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"