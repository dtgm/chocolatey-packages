$packageName = 'cmder'
$url = 'https://github.com/cmderdev/cmder/releases/download/1.3.1/cmder.7z'
$checksum = '8bbdb4074e9c1ad9ae85c366da12b7b9'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'