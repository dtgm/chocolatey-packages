$packageName = 'networklatencyview'
$url = 'http://www.nirsoft.net/utils/networklatencyview.zip'
$checksum = '61b0826def25d599425e53f28d521daa32f69798'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/networklatencyview-x64.zip'
$checksum64 = '2c679654b935ab5b3e682a167a7d9f6c67a04c8d'
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