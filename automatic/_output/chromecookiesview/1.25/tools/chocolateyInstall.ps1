$packageName = 'chromecookiesview'
$url = 'http://www.nirsoft.net/utils/chromecookiesview.zip'
$checksum = 'e131756a7d3e2270c9a0c73e5dd74a7f31ea9d14c75af2fca931fc39a0ee7e44'
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