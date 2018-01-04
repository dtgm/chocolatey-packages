$packageName = 'devmanview'
$url = 'http://www.nirsoft.net/utils/devmanview.zip'
$checksum = '4860c4ed79b906ed59c10ce542afb6b5804262a67cc8c6d354e5626b493cb543'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/devmanview-x64.zip'
$checksum64 = '2c6acd319d2edc7484d50eb9a5e6853f90c88e9da0526fa652ebcc261876ce06'
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