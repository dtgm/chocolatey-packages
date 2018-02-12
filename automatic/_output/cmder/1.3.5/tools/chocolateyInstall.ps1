$packageName = 'cmder'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.5/cmder.7z'
$checksum = 'a2834fc348c7533d7292dbd4ad9feb09'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'