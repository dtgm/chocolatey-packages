$packageName = 'processthreadsview'
$url = 'http://www.nirsoft.net/utils/processthreadsview.zip'
$checksum = 'dde9d3ace4233d6da4c24c666d1d433de59c98c00cf93482b98afbbff93eecd4'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/processthreadsview-x64.zip'
$checksum64 = 'f694df9fbbf6cd6c0e6b59ca819a8176e6a347f874a3a614a68d5cd217ecc1ae'
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