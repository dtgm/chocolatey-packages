$packageName = 'cmdermini.portable'
$url = 'https://github.com/bliker/cmder/releases/download/v1.2.9/cmder_mini.zip'
$checksum = '4952E2AFAF3E036D955F7A7342C16057'
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