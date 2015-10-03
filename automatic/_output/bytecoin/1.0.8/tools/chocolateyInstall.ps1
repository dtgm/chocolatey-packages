$packageName = 'bytecoin'
$url = 'http://sourceforge.net/projects/bytecoin-bcn/files/BytecoinWallet/BytecoinWallet-1.0.8.win32.zip/download'
$checksum = '3e58a3ffd165df350155ca1d81835e2772821cbe'
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