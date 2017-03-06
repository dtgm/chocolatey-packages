$packageName = 'imagecacheviewer'
$url = 'http://www.nirsoft.net/utils/imagecacheviewer.zip'
$checksum = '3e79e836bbab9fc8f8c92f142ed282589251fc86ff16bebf1fef3851b4b1ed05'
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