$packageName = 'httpnetworksniffer'
$url = 'http://www.nirsoft.net/utils/httpnetworksniffer.zip'
$checksum = '204bb702a5db18153c2974c8af6b3f0dc483ac9d'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/httpnetworksniffer-x64.zip'
$checksum64 = '51c87afb429fae30aaf41a1a3c10465aa50195ba'
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