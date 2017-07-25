$packageName = 'bytecoin'
$url = 'https://sourceforge.net/projects/bytecoin-bcn/files/BytecoinWallet/BytecoinWallet-1.1.8.win64.zip/download'
$checksum = 'ecaa369b6353f9dd8f5227f48bf181ec6e6f771f23f0ce29ce67b1f071e30a59'
$checksumType = 'sha256'
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