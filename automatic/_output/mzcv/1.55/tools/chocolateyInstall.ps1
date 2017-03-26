$packageName = 'mzcv'
$url = 'http://www.nirsoft.net/utils/mzcv.zip'
$checksum = '786e87bd988aaed96446a082ba1c8f1b89e349263d6dcf055f8a72050d9e356b'
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