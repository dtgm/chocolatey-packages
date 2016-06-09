$packageName = '{{PackageName}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$urlArray = {{DownloadUrlx64}}
$url = $urlArray[0]
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"