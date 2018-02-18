$packageName = 'wifichannelmonitor'
$url = 'http://www.nirsoft.net/utils/wifichannelmonitor.zip'
$checksum = 'f497b6f276175fe6d2bb8dd14ab5095058a15b5246171c33a8069ec40f089605'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/wifichannelmonitor-x64.zip'
$checksum64 = '8e11c92f7e15cdcd3584510f42701b123627ee2bb47f46a68212c5e39750538c'
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