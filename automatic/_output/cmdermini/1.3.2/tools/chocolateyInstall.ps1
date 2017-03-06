$packageName = 'cmdermini'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.2/cmder_mini.zip'
$checksum = '21802d174beda22d9abc4446d2a0a316'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'