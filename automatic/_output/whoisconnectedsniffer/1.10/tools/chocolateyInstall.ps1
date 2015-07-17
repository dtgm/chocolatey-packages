$packageName = 'whoisconnectedsniffer'
$url = 'http://www.nirsoft.net/utils/whoisconnectedsniffer.zip'
$checksum = '691b0d0446b7bde6ad029b832f2ea6d34e5d1870'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/whoisconnectedsniffer-x64.zip'
$checksum64 = 'd15accd39fbfd8d14b45de8bafa030cd5134d1a9'
$checksumType64 = 'sha1'
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