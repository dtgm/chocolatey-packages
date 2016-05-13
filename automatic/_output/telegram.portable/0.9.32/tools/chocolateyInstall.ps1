$packageName = 'telegram.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://updates.tdesktop.com/tsetup/tportable.0.9.32.zip'
$checksum = '53b6940a23ed2173db4db8c91a2f18adc93c5c5a'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"