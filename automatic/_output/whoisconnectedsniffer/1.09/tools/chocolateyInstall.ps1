$packageName = 'whoisconnectedsniffer'
$url = 'http://www.nirsoft.net/utils/whoisconnectedsniffer.zip'
$checksum = 'a9410906043a8d93cc8faa68283a8dff2075bff0'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/whoisconnectedsniffer-x64.zip'
$checksum64 = '7820679ff540e703e30de6b7a4fc53ab1384a41e'
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