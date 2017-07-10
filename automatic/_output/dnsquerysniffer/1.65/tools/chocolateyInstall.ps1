$packageName = 'dnsquerysniffer'
$url = 'http://www.nirsoft.net/utils/dnsquerysniffer.zip'
$checksum = '9e059693f9b51079a05b15f9649511662cce3604eae29ab817334c739f96ca2c'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/dnsquerysniffer-x64.zip'
$checksum64 = 'c511a48f0d9f99e6c05f0f8d7e41e3a87a3aaac412352223ca2871fc939030eb'
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