$packageName = 'peazip.portable'
$packageVersion = '5.8.1'
$urlArray = @('https://github.com/giorgiotani/PeaZip/releases/download/5.8.1/peazip_portable-5.8.1.WINDOWS.zip', 'https://github.com/giorgiotani/PeaZip/releases/download/5.8.1/peazip_portable-5.8.1.WIN64.zip')
$url = $urlArray[0]
$checksum = '5cc9a1f75ad53c0cfaed4c4413c012118afe1ac0'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '98a7f0eac3ba4808e959681faecdefaa05fc98b2'
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