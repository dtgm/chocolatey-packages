$packageName = 'lastactivityview'
$url = 'http://www.nirsoft.net/utils/lastactivityview.zip'
$checksum = '2375a8248b0e61bde13e4e03d8ab45afac7795bbe553dd8674b3c9a76610c09f'
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