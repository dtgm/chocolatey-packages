$packageName = 'cmder'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.0-pre/cmder.7z'
$checksum = 'f799de65164a6780c7f898585e20c3485a8d4b0b917a600377ba573eee2d70e7'
$checksumType = 'sha256'
$bin = Get-ToolsLocation
$installPath = Join-Path $bin "cmder"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$installPath" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Write-Verbose "Adding `'$installPath`' to path"
Install-ChocolateyPath "$installPath" 'user'