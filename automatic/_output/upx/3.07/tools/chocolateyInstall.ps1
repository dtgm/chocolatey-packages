$packageName = 'upx'
$url = 'http://upx.sourceforge.net/download/upx307w.zip'
$checksum = 'fbc3ea009cf90d32a49a619aa7fc46aab0f1a4e4'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"