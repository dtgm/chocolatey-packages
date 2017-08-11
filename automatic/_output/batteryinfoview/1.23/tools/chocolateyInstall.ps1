$packageName = 'batteryinfoview'
$url = 'http://www.nirsoft.net/utils/batteryinfoview.zip'
$checksum = '6c48ed1194c1e1973c0dd3d40a05cbe6f5f4ff3649bdb6c568c122e74c1ff18b'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null