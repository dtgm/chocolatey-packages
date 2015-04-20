$packageName = 'whatishang'
$url = 'http://www.nirsoft.net/utils/whatishang.zip'
$checksum = '75b2ad885ec4537b32b39b40f7f186c847746ec2'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/whatishang-x64.zip'
$checksum64 = '2b347b92534fa21502ad5a2a77bbbdf1d5afcf1d'
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