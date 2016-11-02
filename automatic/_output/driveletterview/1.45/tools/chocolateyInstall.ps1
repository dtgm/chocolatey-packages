$packageName = 'driveletterview'
$url = 'http://www.nirsoft.net/utils/driveletterview.zip'
$checksum = 'c5cc6672b37d73147870b34c9574c3b0fb0d857916f4140bb83f2b4dd7ad948c'
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