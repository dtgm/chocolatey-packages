$packageName = 'wifiinfoview'
$url = 'http://www.nirsoft.net/utils/wifiinfoview.zip'
$checksum = 'fca46e4cd793c6c598a19b21ab76062f7fcc3a83d14bc04b41bc1c7f71cb57c7'
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