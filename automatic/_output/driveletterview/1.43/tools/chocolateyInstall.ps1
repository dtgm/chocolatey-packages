$packageName = 'driveletterview'
$url = 'http://www.nirsoft.net/utils/driveletterview.zip'
$checksum = '91b4f8e4c0e5a0b3565bfc5d222c4ec37ce23229ce1291a3286a3ca0b9da8d65'
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