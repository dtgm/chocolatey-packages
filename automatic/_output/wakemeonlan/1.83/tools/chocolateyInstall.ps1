$packageName = 'wakemeonlan'
$url = 'http://www.nirsoft.net/utils/wakemeonlan.zip'
$checksum = 'e5da9dc46f703fd15fbb52b7c05140bcbfe3ec9fa087a1cdff4e02f4390d35d3'
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