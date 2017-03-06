$packageName = 'ipfs'
$url = 'https://dist.ipfs.io/go-ipfs/v0.4.3/go-ipfs_v0.4.3_windows-386.zip'
$checksum = '2879f5e47100c80b08481d67edff26fe8eceb76e1882d0e7117b026d58f0251a'
$checksumType = 'sha256'
$url64 = 'https://dist.ipfs.io/go-ipfs/v0.4.3/go-ipfs_v0.4.3_windows-amd64.zip'
$checksum64 = '062b8aa575f9d0087d0167fc3e952b2a4c4d44b1e22ffe68c1b1bda468038c18'
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