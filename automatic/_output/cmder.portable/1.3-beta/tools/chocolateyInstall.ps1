$packageName = 'cmder.portable'
$url = 'https://github.com/cmderdev/cmder/releases/download/v1.3.0-pre/cmder.7z'
$checksum = '84e53f8ed04d1c147b0f6c74868a4854b3acfefc'
$checksumType = 'sha1'
$toolsLoc = Get-ToolsLocation
$installPath = Join-Path $toolsLoc "cmder"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$installPath" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Write-Verbose "Adding `'$installPath`' to path"
Install-ChocolateyPath "$installPath" 'user'