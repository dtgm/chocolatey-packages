$packageName = 'shmnview'
$url = 'http://www.nirsoft.net/utils/shmnview.zip'
$checksum = '339cc72b66d8d49457af312e404a146e5ae4214a87c92531c8de217fc7b1200e'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/shmnview-x64.zip'
$checksum64 = '2d6397bfbf5aa177ed82e2d34898c3a8c5123244bca823261674b710d3e749e0'
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