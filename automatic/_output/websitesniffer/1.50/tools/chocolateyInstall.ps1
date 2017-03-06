$packageName = 'websitesniffer'
$url = 'http://www.nirsoft.net/utils/websitesniffer.zip'
$checksum = 'ce89296af15a702f37618ed79f310a90d720b9153cf33e5090075fe6d2b334cc'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/websitesniffer-x64.zip'
$checksum64 = 'a5d1a4d0cb1dcfbfe02a5523a4b4b3a8d88dd0a696dcb0b97558322e431826b7'
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