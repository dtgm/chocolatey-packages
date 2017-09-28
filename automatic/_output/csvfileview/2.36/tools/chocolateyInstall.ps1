$packageName = 'csvfileview'
$url = 'http://www.nirsoft.net/utils/csvfileview.zip'
$checksum = 'c91ed5d549f9c8a9f2efb408c268f37b938763b7e1cb1de22298dbd3e68eff2d'
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