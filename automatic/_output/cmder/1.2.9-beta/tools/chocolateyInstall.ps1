$packageName = 'cmder'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.2.9/cmder.7z'
$checksum = '89f4343a580528fb644690d6f7f2cbde1d6dd5ee8740ddeff7eed57e0b4dedf6'
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