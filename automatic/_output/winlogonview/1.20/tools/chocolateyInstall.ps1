$packageName = 'winlogonview'
$url = 'http://www.nirsoft.net/utils/winlogonview.zip'
$checksum = '73006ddfd16ec71912181bac40fa3ceefabcd46e99d8663da665aa33cde836ef'
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