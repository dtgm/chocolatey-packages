$packageName = 'diskcountersview'
$url = 'http://www.nirsoft.net/utils/diskcountersview.zip'
$checksum = '1859b30cd99161101daf000a7205cd1104d2164c02eda086e3f29ed94dabf492'
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