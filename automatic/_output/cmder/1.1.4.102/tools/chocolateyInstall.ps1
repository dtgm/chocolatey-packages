$packageName = 'cmder'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.1.4.1/cmder.7z'
$checksum = '06f8ed2542f3d49208ab73bffd71de78'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot 'cmder'

Install-ChocolateyZipPackage -PackageName $packageName `
                             -Url $url `
                             -UnzipLocation $installPath `
                             -Checksum $checksum `
                             -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'user'