$packageName = 'httpnetworksniffer'
$url = 'http://www.nirsoft.net/utils/httpnetworksniffer.zip'
$checksum = '31c7b6bf7b5600b429fdb6fea002304ca5fbce10527a78f22e2b2b0db20df591'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/httpnetworksniffer-x64.zip'
$checksum64 = '94f2d3d7d3dfec24f0953ab8065a329fc2e77f0cfc49501a660e8d37f87579d0'
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