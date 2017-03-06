$packageName = 'ipfs'
$url = 'https://dist.ipfs.io/go-ipfs/v0.4.2/go-ipfs_v0.4.2_windows-386.zip'
$checksum = 'fdb712ca6008288ab1ddd09300dfd099093a5fb6f5e8781cf1332f2dddbafb55'
$checksumType = 'sha256'
$url64 = 'https://dist.ipfs.io/go-ipfs/v0.4.2/go-ipfs_v0.4.2_windows-amd64.zip'
$checksum64 = '7b31ff120eace1846e558f86e2e2dd74ecd53e6983ef4042ab15ba6042cd3982'
$checksumType64 = 'sha256'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $toolsDir `
                             -Url64bit $url64 `
                             -Checksum $checksum `
                             -ChecksumType $checksumType `
                             -Checksum64 $checksum64 `
                             -ChecksumType64 $checksumType64