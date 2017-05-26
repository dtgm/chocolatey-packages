$packageName = 'bytecoin'
$url = 'https://sourceforge.net/projects/bytecoin-bcn/files/BytecoinWallet/BytecoinWallet-1.1.4.win64.zip/download'
$checksum = 'a9a81c4b3258106bff2c9ac5621173068e2774d5f934528882809e2f71657a04'
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