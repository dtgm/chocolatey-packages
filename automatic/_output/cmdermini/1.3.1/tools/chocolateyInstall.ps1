$packageName = 'cmdermini'
$url = 'https://github.com/cmderdev/cmder/releases/download/1.3.1/cmder_mini.zip'
$checksum = '090b010e3bd4a8174f15ed8bdef2a226'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'