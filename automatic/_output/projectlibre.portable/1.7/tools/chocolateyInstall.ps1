$packageName = 'projectlibre.portable'
$url = 'https://sourceforge.net/projects/projectlibre/files/ProjectLibre/1.7/projectlibre-1.7.0.zip'
$checksum = '277ccf022267ecc9044de72f52db954e934b1bdce5d1ad27567efc603209176f'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"