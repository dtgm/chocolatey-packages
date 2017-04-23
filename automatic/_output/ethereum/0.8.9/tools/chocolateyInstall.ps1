$packageName = 'ethereum'
$url = 'https://github.com/ethereum/mist/releases/download/v0.8.9/Ethereum-Wallet-win32-0-8-9.zip'
$checksum = '7df2f1e8ba097aefe65fe8310024e61ccecc6b91cf34f916d38f396c1ff37fb0'
$checksumType = 'sha256'
$url64 = 'https://github.com/ethereum/mist/releases/download/v0.8.9/Ethereum-Wallet-win64-0-8-9.zip'
$checksum64 = 'a46f09c1b63e63c8e42fea96bc184dc508381cfe29672c6417d37230966a6493'
$checksumType64 = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"