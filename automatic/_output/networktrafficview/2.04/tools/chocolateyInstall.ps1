$packageName = 'networktrafficview'
$url = 'http://www.nirsoft.net/utils/networktrafficview.zip'
$checksum = '375c718ed32126337aa870c765d4e2c615b8264bf93a16408b1115e90080e77e'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/networktrafficview-x64.zip'
$checksum64 = '7184c7857696972e97910a2043ae878c170cba9ab5de95f460dd163aad020277'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null