$packageName = 'dnsquerysniffer'
$url = 'http://www.nirsoft.net/utils/dnsquerysniffer.zip'
$checksum = '9bc1fd32446609b2526c73545fc32a0414bb3d659b4d3f06ca707718bfa37462'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/dnsquerysniffer-x64.zip'
$checksum64 = '1b421a13cee8675c3b5ccabe737a8e592ef1c87cd878f7d24689225915105edc'
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