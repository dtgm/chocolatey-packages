$packageName = 'macaddressview'
$url = 'http://www.nirsoft.net/utils/macaddressview.zip'
$checksum = 'e3db80f22642893654717413c0f68c69120ca0d537ba06da0b02ad984b48a31f'
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