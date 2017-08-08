$packageName = 'nxt'
$url = 'https://bitbucket.org/JeanLucPicard/nxt/downloads/nxt-client-1.11.6.zip'
$checksum = '372914193e0c4eac4d5e4b8697818fed6e13ea1d20171f3a4f8412d41df89e3f'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"