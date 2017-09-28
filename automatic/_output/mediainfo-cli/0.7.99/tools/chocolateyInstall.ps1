$packageName = 'mediainfo-cli'
$url = 'http://mediaarea.net/download/binary/mediainfo/0.7.99/MediaInfo_CLI_0.7.99_Windows_i386.zip'
$checksum = '246d647d0c53da245afdb03f815e2d1024efa8ba9da23d636210b286a880d2d3'
$checksumType = 'sha256'
$url64 = 'http://mediaarea.net/download/binary/mediainfo/0.7.99/MediaInfo_CLI_0.7.99_Windows_x64.zip'
$checksum64 = '4d4bd9a35b6a6c296553942f1791c78ab77fe431320e8f48da2257562726645f'
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