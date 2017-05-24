$packageName = 'outlookaddressbookview'
$url = 'http://www.nirsoft.net/utils/outlookaddressbookview.zip'
$checksum = '0a6a628cda61929f66efff7eaca21c25f1ebcf90a19db227516e2bec709daf33'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/outlookaddressbookview-x64.zip'
$checksum64 = 'de4cbccfb80db6af7b28c4cfa3e9a32cef62a7af6e4cfc8e3503b7a4673d269f'
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