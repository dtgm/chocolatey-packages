$packageName = 'whoisconnectedsniffer'
$url = 'http://www.nirsoft.net/utils/whoisconnectedsniffer.zip'
$checksum = '3539c4f001249147e687e19954be5218b4fcbf42'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/whoisconnectedsniffer-x64.zip'
$checksum64 = 'b9395507f5cc0ae4d972736f219ab37e0330e10a'
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