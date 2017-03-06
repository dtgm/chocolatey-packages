$packageName = 'httpnetworksniffer'
$url = 'http://www.nirsoft.net/utils/httpnetworksniffer.zip'
$checksum = '7400950ddaf61070679f8b75fef5c51d19e72f7d68eae214a8ffa53574c9f4fc'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/httpnetworksniffer-x64.zip'
$checksum64 = '2bbe941d49a3bca2f9a3e2d76def8700352dde041eab802445d875ea5ab16412'
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