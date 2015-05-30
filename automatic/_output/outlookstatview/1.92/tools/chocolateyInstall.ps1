$packageName = 'outlookstatview'
$url = 'http://www.nirsoft.net/utils/outlookstatview.zip'
$checksum = 'd657fcfbca407fae7ae83dde42caddd3c3f142cc'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/outlookstatview-x64.zip'
$checksum64 = '6e4db2a703681a219e85651202ad4cbd1a91678b'
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