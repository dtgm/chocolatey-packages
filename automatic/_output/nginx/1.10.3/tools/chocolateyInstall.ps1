$packageName = 'nginx'
$url = 'https://www.nginx.org/download/nginx-1.10.3.zip'
$checksum = 'f62949fa2c083f64155efcdd029239dc78cfc438162f83cb88d38b5b5d3f16f8'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"