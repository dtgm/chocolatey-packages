$packageName = 'wavpack'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.wavpack.com/wavpack-4.80.0.zip'
$checksum = '6b013e4678ee1ebdf8ca8fdf0947e0d18b440022'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"