$packageName = 'pinginfoview'
$url = 'http://www.nirsoft.net/utils/pinginfoview.zip'
$checksum = '923a2d0ab8aa861cd93d6937644d505aa554baf82f3509928cc3328247cadb3f'
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