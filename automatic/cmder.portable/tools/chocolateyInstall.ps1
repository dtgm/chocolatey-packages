$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'md5'
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot "cmder"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$installPath" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Add "cmder.exe" to path
Write-Verbose "Adding `'$installPath`' to path"
Install-ChocolateyPath "$installPath" 'user'