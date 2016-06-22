$packageName = 'cmdermini'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.1.4.1/cmder_mini.zip'
$checksum = '4aa8ea012d14850f546c10bc30b1fbe3'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'