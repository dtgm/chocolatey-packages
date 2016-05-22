$packageName = 'cmdermini'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.0-pre/cmder_mini.zip'
$checksum = '0f602ca033f782ddedb5a74bbb7f28b8ca364f4c39c23b616173b3a3858ce9e2'
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