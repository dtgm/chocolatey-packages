$packageName = 'mweather.portable'
$url = 'http://www.nirsoft.net/utils/mweather.zip'
$checksum = 'eb36e3caf7e4b39b9cc010c776074eefcce10d2203fd2332cd9c7e46a101bcb1'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "mweather.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null