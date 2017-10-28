$packageName = 'cmdermini'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.3/cmder_mini.zip'
$checksum = '6ed2cb77a2335223dd71cb352bac3f89'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'