$packageName = 'simpleprogramdebugger'
$url = 'http://www.nirsoft.net/utils/simpleprogramdebugger.zip'
$checksum = '998534cf82148c0d4d89cb12ca57a349e77a560ceb83332b7f7ee35037fe1aab'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/simpleprogramdebugger-x64.zip'
$checksum64 = '6bd31e2c21e74bde6d2c2ca9811d17d5dd10be30e3b2b38aad8f6ffa3fc4222d'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null