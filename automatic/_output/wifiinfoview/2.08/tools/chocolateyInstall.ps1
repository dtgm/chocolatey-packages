$packageName = 'wifiinfoview'
$url = 'http://www.nirsoft.net/utils/wifiinfoview.zip'
$checksum = '0cf711e934baef475bfca1983965cf32c9f6d6827f76069b19664f40a4730c2a'
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