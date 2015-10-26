$packageName = 'whoisconnectedsniffer'
$url = 'http://www.nirsoft.net/utils/whoisconnectedsniffer.zip'
$checksum = '0e32ad01f6a8bca9d7570b977586d5e6c66efe0a'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/whoisconnectedsniffer-x64.zip'
$checksum64 = '886faf1163443969d0d507ec5f60581707d2f20c'
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