$packageName = 'ipfs'
$url = 'https://dist.ipfs.io/go-ipfs/v0.4.4/go-ipfs_v0.4.4_windows-386.zip'
$checksum = 'c1db5272f6e938397d035f2844ca81a017193be5785a0b69ec402d2ab9ba4f43'
$checksumType = 'sha256'
$url64 = 'https://dist.ipfs.io/go-ipfs/v0.4.4/go-ipfs_v0.4.4_windows-amd64.zip'
$checksum64 = '592fa2e15cf459e6871b135c8b70a1eef29c6fb7c22f4ffd949e478ca9855dba'
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