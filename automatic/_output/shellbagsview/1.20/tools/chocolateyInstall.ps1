$packageName = 'shellbagsview'
$url = 'http://www.nirsoft.net/utils/shellbagsview.zip'
$checksum = '03fa84f215a5ff882391f454c6052a2cff6c26a8e7818844795ed23a2b26116d'
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