$packageName = 'dnsquerysniffer'
$url = 'http://www.nirsoft.net/utils/dnsquerysniffer.zip'
$checksum = 'e51803e8e2e8664931064ecd961e5e5f614990c1'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/dnsquerysniffer-x64.zip'
$checksum64 = 'e0fe8cf932f334aadc5cf5da9f227669c330be78'
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