$packageName = 'cmder'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.4/cmder.7z'
$checksum = 'd369bf0ca89f55f9bdde390a977627d2'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'