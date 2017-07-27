$packageName = 'opus-tools'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://archive.mozilla.org/pub/opus/win64/opus-tools-0.1.10-win64.zip'
$checksum = '71d724eddd78f04789ec5e68e269a421026cf57c90c8b1066cb31e42e690e248'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"