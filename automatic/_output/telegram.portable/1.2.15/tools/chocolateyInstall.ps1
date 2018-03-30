$packageName = 'telegram.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/telegramdesktop/tdesktop/releases/download/v1.2.15/tportable.1.2.15.zip'
$checksum = 'b27d925342d197b38486b16da392201559bcbff380263c620eff081dc25d5693'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"