$packageName = 'cmdermini'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.2.9/cmder_mini.zip'
$checksum = '095e2b2dac78f6fb28287c51429ff35ded4c3ee253250d27bcf1f279cb1c5937'
$checksumType = 'sha256'
$bin = Get-ToolsLocation
$installPath = Join-Path $bin "cmdermini"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$installPath" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Write-Verbose "Adding `'$installPath`' to path"
Install-ChocolateyPath "$installPath" 'user'