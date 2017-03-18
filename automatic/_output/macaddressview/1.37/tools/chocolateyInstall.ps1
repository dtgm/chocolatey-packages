$packageName = 'macaddressview'
$url = 'http://www.nirsoft.net/utils/macaddressview.zip'
$checksum = '749abf41e4a5eaf20356ebef7552c6e791b57186a71e896959c261c4c4720c97'
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