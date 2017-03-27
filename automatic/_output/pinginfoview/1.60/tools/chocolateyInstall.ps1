$packageName = 'pinginfoview'
$url = 'http://www.nirsoft.net/utils/pinginfoview.zip'
$checksum = '71b0757a3df79515fb5b086b79c5505ac0dbf88557748c3a7c6ba5250672a63f'
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