$packageName = 'ipfs'
$url = 'https://dist.ipfs.io/go-ipfs/v0.4.5/go-ipfs_v0.4.5_windows-386.zip'
$checksum = 'd29392632725adf88ad5b547d2cb07bbaf09c5d6f1319faed769e8a7489b82e5'
$checksumType = 'sha256'
$url64 = 'https://dist.ipfs.io/go-ipfs/v0.4.5/go-ipfs_v0.4.5_windows-amd64.zip'
$checksum64 = '8e6cd15ed7b4c06f683ade6b74b56e000421c01a5cc9937b582bbc004196dec9'
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