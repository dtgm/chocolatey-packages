$packageName = 'devmanview'
$url = 'http://www.nirsoft.net/utils/devmanview.zip'
$checksum = '3d2fd9128d76600ea5441edda88d816aaa2f91429f8536f8d8d282ebe8597c4c'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/devmanview-x64.zip'
$checksum64 = 'e0ca6eddb8e0d0d97535f78b70556971ea7394aa9e0b489dfdb1e7904562f718'
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