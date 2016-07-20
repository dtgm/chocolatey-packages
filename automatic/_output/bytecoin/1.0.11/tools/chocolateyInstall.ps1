$packageName = 'bytecoin'
$url = 'https://sourceforge.net/projects/bytecoin-bcn/files/BytecoinWallet/BytecoinWallet-1.0.11.win32.zip'
$checksum = 'c6d886cb23639ae22d53d0b1e43ec0afddf10eba8c478f7999652b319160729d'
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