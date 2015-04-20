$packageName = 'installeddriverslist'
$url = 'http://www.nirsoft.net/utils/installeddriverslist.zip'
$checksum = '59b535d05615205e2c19b1062314b052821cce09'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/installeddriverslist-x64.zip'
$checksum64 = '970273d9d51e9b1306be719b72a84f799d9f4e42'
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