$packageName = 'cmder'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.3/cmder.7z'
$checksum = 'f93bb2cf97854b806c2d2b7c533f8903'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'