$packageName = 'bytecoin'
$url = 'http://sourceforge.net/projects/bytecoin-bcn/files/BytecoinWallet/BytecoinWallet-1.0.6.win64.zip/download'
$checksum = 'b0fdb3285e1189d524fc681b40c463a35961bee8'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"