$packageName = 'bytecoin'
$url = 'https://bytecoin.org/static/files/BytecoinWallet-1.1.1.win32.zip'
$checksum = '68deb44af959c1fc38e8f37b21d99db0e53796754cbc5831fea60a9166f87dcb'
$checksumType = 'sha256'
$url64 = 'https://bytecoin.org/static/files/BytecoinWallet-1.1.1.win64.zip'
$checksum64 = 'd56fef745eb33a23696cbb7ef522d7193d0fb87f3cb91b6a4d73350b74ec243b'
$checksumType64 = 'sha256'
$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"