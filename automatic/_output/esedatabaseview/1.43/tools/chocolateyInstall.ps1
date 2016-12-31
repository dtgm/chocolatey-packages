$packageName = 'esedatabaseview'
$url = 'http://www.nirsoft.net/utils/esedatabaseview.zip'
$checksum = 'cad52b0ef1433bc8382eae7aeafe0f301925fb4fce0be9d1d9f7bc31335b2835'
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