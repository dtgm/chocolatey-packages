$packageName = 'httpnetworksniffer'
$url = 'http://www.nirsoft.net/utils/httpnetworksniffer.zip'
$checksum = 'c13a13ecf619e2363a7418cc68884150547b75d5'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/httpnetworksniffer-x64.zip'
$checksum64 = 'ab8ec85761ce7a2103347a52cb1329a03c945875'
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