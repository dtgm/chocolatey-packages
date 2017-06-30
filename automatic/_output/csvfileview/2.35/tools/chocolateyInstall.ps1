$packageName = 'csvfileview'
$url = 'http://www.nirsoft.net/utils/csvfileview.zip'
$checksum = 'ed4522fc5cb4f653b7e9929196651add38a9e1984e2644edeed0a6f0e0557a02'
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