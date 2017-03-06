$packageName = 'whosip'
$url = 'http://www.nirsoft.net/utils/whosip.zip'
$checksum = '8846c9f44ae744ec474e6eb631edd9857e12669fc98e5bb79eb0f77573d0c8c9'
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