$packageName = 'dnsquerysniffer'
$url = 'http://www.nirsoft.net/utils/dnsquerysniffer.zip'
$checksum = '31de59a9ce9cbbc08b15562a9730245b9c6dd48f4ffddd002148896530d86d1a'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/dnsquerysniffer-x64.zip'
$checksum64 = '89ca77316a67d6cdd4184c925834487adb5fdc5274dc17bfaee0a183377e06f1'
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