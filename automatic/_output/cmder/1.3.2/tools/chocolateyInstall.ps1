$packageName = 'cmder'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.2/cmder.7z'
$checksum = '3a05193c0a6fff1e0eddbce6a97447cc'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'