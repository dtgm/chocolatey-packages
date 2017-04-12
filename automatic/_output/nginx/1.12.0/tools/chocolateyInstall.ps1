$packageName = 'nginx'
$url = 'https://www.nginx.org/download/nginx-1.12.0.zip'
$checksum = 'b4db429ead7bbdde144ccf016497a68c55722f12114aa649d9e8108170b0175c'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"