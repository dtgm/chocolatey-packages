$packageName = 'wavpack'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.wavpack.com/wavpack-4.75.2.zip'
$checksum = 'd781ff6d02dab6fd8af6c9b6267b6d8cc8bcd3bc'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"