$packageName = 'wifichannelmonitor'
$url = 'http://www.nirsoft.net/utils/wifichannelmonitor.zip'
$checksum = '40920a9bdc18e76f72218113c7ae28205bb36fbdab144e4b88feee42c6196f5c'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/wifichannelmonitor-x64.zip'
$checksum64 = '6526b5b683fca7c40a27d4612ce8748ffcc587ab4dfdcee032e1fa278019d0b2'
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