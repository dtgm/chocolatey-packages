$packageName = 'cmder.portable'
$url = 'https://github.com/bliker/cmder/releases/download/v1.2.9/cmder.7z'
$checksum = 'D7F74429C51E375B684DD73E123BBFA4'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot "cmder"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$installPath" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Add "cmder.exe" to path
Write-Verbose "Adding `'$installPath`' to path"
Install-ChocolateyPath "$installPath" 'user'