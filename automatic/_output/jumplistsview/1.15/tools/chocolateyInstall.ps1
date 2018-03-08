$packageName = 'jumplistsview'
$url = 'http://www.nirsoft.net/utils/jumplistsview.zip'
$checksum = '167bb877c7f28e57d7e1f65fca7bdaed5f0986f743c01ff2beb08cca32823ca1'
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