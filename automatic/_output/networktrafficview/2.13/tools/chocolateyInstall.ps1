$packageName = 'networktrafficview'
$url = 'http://www.nirsoft.net/utils/networktrafficview.zip'
$checksum = '15ba204ce06149333320650b949aee9cd993dcf2353b134b08b612c9695c4a9a'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/networktrafficview-x64.zip'
$checksum64 = '30c0b8c343d73f4b6ffc87f2534a7c6e78fe39cf11e6e04b4e6cb29ef7d84c03'
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