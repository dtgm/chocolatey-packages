$packageName = 'ipfs'
$url = 'https://dist.ipfs.io/go-ipfs/v0.4.6/go-ipfs_v0.4.6_windows-386.zip'
$checksum = '154c4f76add0aa50b6eeefc4efd3e48386d30f9c6097e07125f6aa93c1ae6ef6'
$checksumType = 'sha256'
$url64 = 'https://dist.ipfs.io/go-ipfs/v0.4.6/go-ipfs_v0.4.6_windows-amd64.zip'
$checksum64 = 'd29194b7b1ace0dcfd6c3ebc42091a713055b66f66d30e88049f60488dbe9b5d'
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