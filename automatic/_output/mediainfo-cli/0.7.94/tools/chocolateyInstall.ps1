$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.94/MediaInfo_CLI_0.7.94_Windows_i386.zip'
$checksum = '2591189595cea3d28d18e2a4a03db9abde193017bff107dfe665a7018fb0afd0'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.94/MediaInfo_CLI_0.7.94_Windows_x64.zip'
$checksum64 = '545ad333d6ec7549c7d7c52b5406bf82d6bc5d886ae514cac4a1c616d442d89d'
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