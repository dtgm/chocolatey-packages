$packageName = 'ipfs'
$url = 'https://dist.ipfs.io/go-ipfs/v0.4.7/go-ipfs_v0.4.7_windows-386.zip'
$checksum = 'a14b7256ff6b590bc7d674360c2b70efdc7e179e3467f16aae499ea1abca97bd'
$checksumType = 'sha256'
$url64 = 'https://dist.ipfs.io/go-ipfs/v0.4.7/go-ipfs_v0.4.7_windows-amd64.zip'
$checksum64 = 'cc8fbeeb5713774749aa8eeb30344d63c8ecab057d2c850e26b2ea853494475e'
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