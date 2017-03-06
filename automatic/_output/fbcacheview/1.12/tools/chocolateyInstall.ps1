$packageName = 'fbcacheview'
$url = 'http://www.nirsoft.net/utils/fbcacheview.zip'
$checksum = '5005d909a64035578877f94d5ff2ad44680fd3fe12106dc2b3ca07d1333496bb'
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