$packageName = 'nginx'
$url = 'https://www.nginx.org/download/nginx-1.10.2.zip'
$checksum = '93e7c628d34cf4fc47943285c8a8742581f8d2efcbcb31fd01533f4d5ed61a3b'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"