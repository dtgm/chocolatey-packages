$packageName = 'peazip.portable'
$packageVersion = '5.7.2'
$urlArray = @('https://github.com/giorgiotani/PeaZip/releases/download/5.7.2/peazip_portable-5.7.2.WINDOWS.zip', 'https://github.com/giorgiotani/PeaZip/releases/download/5.7.2/peazip_portable-5.7.2.WIN64.zip')
$url = $urlArray[0]
$checksum = 'c21cb7f5fb120aba9af415581ad5e942a7d05593'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '75505decc87293a3e8d03f855f7066ee1b2b5f71'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"