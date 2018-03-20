$packageName = 'chromehistoryview'
$url = 'http://www.nirsoft.net/utils/chromehistoryview.zip'
$checksum = '125d305fb435e61c6ebb0df56cba0aeb0f0850099384553a7d5497ed5771f7a0'
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