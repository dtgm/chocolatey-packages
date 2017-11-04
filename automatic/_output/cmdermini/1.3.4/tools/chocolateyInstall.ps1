$packageName = 'cmdermini'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.4/cmder_mini.zip'
$checksum = 'cf33e4075ae4c24af7639be1e177f2ca'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'