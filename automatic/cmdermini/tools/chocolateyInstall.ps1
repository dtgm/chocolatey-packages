$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'md5'
$bin = Get-ToolsLocation
$installPath = Join-Path $bin "cmdermini"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$installPath" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Write-Verbose "Adding `'$installPath`' to path"
Install-ChocolateyPath "$installPath" 'user'