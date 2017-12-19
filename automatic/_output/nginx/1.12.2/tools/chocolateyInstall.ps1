$packageName = 'nginx'
$url = 'https://www.nginx.org/download/nginx-1.12.2.zip'
$checksum = 'fec5b080758e7cc5f607d5cae4b332fe872f267b2bb5d3f8ccdd9a888fb8011b'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"