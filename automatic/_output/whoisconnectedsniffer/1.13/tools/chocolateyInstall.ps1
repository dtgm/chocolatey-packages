$packageName = 'whoisconnectedsniffer'
$url = 'http://www.nirsoft.net/utils/whoisconnectedsniffer.zip'
$checksum = 'c93e20aba81f2af2b2aecb029b2281f7f9cdb463b8dc9ae29bd1ca22c5aba7da'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/whoisconnectedsniffer-x64.zip'
$checksum64 = '327af60337d3f37371ef211474af1c8387cf52b939055a9098ef776abe6fbfbb'
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