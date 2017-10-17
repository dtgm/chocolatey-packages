$packageName = 'turnedontimesview'
$url = 'http://www.nirsoft.net/utils/turnedontimesview.zip'
$checksum = '9150de7c1b17d2039bf7202360504cda5c8baaed603cb4ece835847b7ee1e76a'
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