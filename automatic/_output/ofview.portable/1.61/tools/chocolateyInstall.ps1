$packageName = 'ofview.portable'
$url = 'http://www.nirsoft.net/utils/ofview.zip'
$checksum = '1b9feda7494a43267515cdb22bbd6e972108aa3d'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/ofview-x64.zip'
$checksum64 = 'e48fe64ece8fa9bf79bfc1f51799c31d232ea90a'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ofview.exe"

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