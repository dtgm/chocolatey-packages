$packageName = 'bytecoin'
$url = 'https://sourceforge.net/projects/bytecoin-bcn/files/BytecoinWallet/BytecoinWallet-1.1.0.win64.zip'
$checksum = 'cd62590f5e2231201ba74c268421f65d24e72ea0beca997525c20e0ad71bc474'
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