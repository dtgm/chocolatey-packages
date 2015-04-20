$packageName = 'winlister'
$url = 'http://www.nirsoft.net/utils/winlister.zip'
$checksum = '8dfc684e0e766186eb4146f5ca12d694a79cb0dc'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/winlister-x64.zip'
$checksum64 = 'dc6bf675d218b8b5c23efbcdf7fecd3da5d45e74'
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