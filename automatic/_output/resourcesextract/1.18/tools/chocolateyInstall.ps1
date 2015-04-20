$packageName = 'resourcesextract'
$url = 'http://www.nirsoft.net/utils/resourcesextract.zip'
$checksum = '11a47a6aeddd88054d191a2766ea3087f7798111'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/resourcesextract-x64.zip'
$checksum64 = '85af2c2bdef3e3512b16ebdd2bf13042522154e3'
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