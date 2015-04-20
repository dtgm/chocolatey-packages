$packageName = 'installedcodec'
$url = 'http://www.nirsoft.net/utils/installedcodec.zip'
$checksum = '7b320006506bf251ee302cfbdda846a8390364ce'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/installedcodec-x64.zip'
$checksum64 = '1ad96c02c69c2629bfa21b43eb7dc9fbf0d10cd2'
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