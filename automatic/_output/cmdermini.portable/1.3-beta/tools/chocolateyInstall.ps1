$packageName = 'cmdermini.portable'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.0-pre/cmder_mini.zip'
$checksum = 'a3e1b3e375af63cc62c0856b737ef1ef467d147c'
$checksumType = 'sha1'
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