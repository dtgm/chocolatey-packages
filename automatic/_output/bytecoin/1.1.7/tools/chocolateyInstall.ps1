$packageName = 'bytecoin'
$url = 'https://sourceforge.net/projects/bytecoin-bcn/files/BytecoinWallet/BytecoinWallet-1.1.7.win64.zip/download'
$checksum = '6dad4c0579462f066f7dc044835231dc4823ec932f2efba09af920a776df48b2'
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