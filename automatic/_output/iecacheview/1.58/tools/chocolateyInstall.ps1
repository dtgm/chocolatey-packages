$packageName = 'iecacheview'
$url = 'http://www.nirsoft.net/utils/iecacheview.zip'
$checksum = '93cb4f0f78c37575f107a73f781be92670fab93328e96207c2c0fdd745f6acf5'
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