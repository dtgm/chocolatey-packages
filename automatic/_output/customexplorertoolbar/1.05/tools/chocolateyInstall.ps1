$packageName = 'customexplorertoolbar'
$url = 'http://www.nirsoft.net/utils/customexplorertoolbar.zip'
$checksum = 'a34e4b2ccc345011d8c3200a9b7a5316ef6d5d6d'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null