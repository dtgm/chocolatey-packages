$packageName = 'networkconnectlog'
$url = 'http://www.nirsoft.net/utils/networkconnectlog.zip'
$checksum = '42f3b6ce8021a9d0d660cdc8d1f61a01c7a8decc'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null