$packageName = 'jumplistsview'
$url = 'http://www.nirsoft.net/utils/jumplistsview.zip'
$checksum = 'd6f38b007844e6c31d0f5f0bd413f9479c0cafe4df181a132a51e7b097550497'
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