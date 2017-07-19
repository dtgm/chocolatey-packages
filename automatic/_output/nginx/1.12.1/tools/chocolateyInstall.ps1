$packageName = 'nginx'
$url = 'https://www.nginx.org/download/nginx-1.12.1.zip'
$checksum = 'b1faa6cb4dde1af57304bc69a1456f62bad3bb6bdc7cda8de17a1833574e2725'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"