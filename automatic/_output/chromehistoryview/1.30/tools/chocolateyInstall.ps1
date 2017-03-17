$packageName = 'chromehistoryview'
$url = 'http://www.nirsoft.net/utils/chromehistoryview.zip'
$checksum = '06b251bad3cfc1023b646663b2193e6e59fdcd1e36a375f13c345ca79eea5c15'
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