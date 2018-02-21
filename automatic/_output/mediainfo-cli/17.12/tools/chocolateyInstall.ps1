$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/17.12/MediaInfo_CLI_17.12_Windows_i386.zip'
$checksum = '04017a7b0f55d1818828a2bf6dbef0a29cf16ae23cc44cf75c9cb5fe22293db3'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/17.12/MediaInfo_CLI_17.12_Windows_x64.zip'
$checksum64 = '974a7772f11e0b45a5e54ba1e55e21bbbf88f649984394fc640fce62472c5ea6'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"