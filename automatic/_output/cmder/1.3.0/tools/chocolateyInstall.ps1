$packageName = 'cmder'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.0/cmder.7z'
$checksum = '285a4db59d3604c490c6264d2a68c1c1'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'