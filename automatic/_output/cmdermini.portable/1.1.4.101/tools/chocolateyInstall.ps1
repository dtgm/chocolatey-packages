$packageName = 'cmdermini.portable'
$url = 'https://github.com//bliker/cmder/releases/download/v1.1.4.1/cmder_mini.zip'
$checksum = '4aa8ea012d14850f546c10bc30b1fbe3'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot "cmdermini"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$installPath" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Add "cmder.exe" to path
Write-Verbose "Adding `'$installPath`' to path"
Install-ChocolateyPath "$installPath" 'user'