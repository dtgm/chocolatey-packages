$packageName = 'nginx'
$url = 'http://www.nginx.net/download/nginx-1.10.1.zip'
$checksum = 'c0a948de8cb59ad5e6998419a0048c1bc98a83b405064202ea61f00d61e03cba'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"