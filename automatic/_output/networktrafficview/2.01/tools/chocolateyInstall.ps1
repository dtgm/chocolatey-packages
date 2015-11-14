$packageName = 'networktrafficview'
$url = 'http://www.nirsoft.net/utils/networktrafficview.zip'
$checksum = '637b1e42f4a3fa817f46ad464d0ff1edb862ccb1'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/networktrafficview-x64.zip'
$checksum64 = '351a39e5905294a6ad162e88de4e6f16ee27263b'
$checksumType64 = 'sha1'
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