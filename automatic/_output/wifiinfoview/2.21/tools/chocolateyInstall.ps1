$packageName = 'wifiinfoview'
$url = 'http://www.nirsoft.net/utils/wifiinfoview.zip'
$checksum = '3a851f2706578e05aa8c7d689db94bc62c2a2835143913ada104ce66b84031d5'
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