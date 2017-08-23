$packageName = 'websitesniffer'
$url = 'http://www.nirsoft.net/utils/websitesniffer.zip'
$checksum = 'f9c841fae243e1584ce9127ebafb7a7c8ce314336759e5ee149b21d18a267f5e'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/websitesniffer-x64.zip'
$checksum64 = 'da76a2e30e3f1167c6effc51b76eae7b8795068479c379d00994d2554b6aae86'
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