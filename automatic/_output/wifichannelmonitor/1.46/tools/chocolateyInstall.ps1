$packageName = 'wifichannelmonitor'
$url = 'http://www.nirsoft.net/utils/wifichannelmonitor.zip'
$checksum = '42909bdd83e9542b73836a65b55e51bfd78e00f0e2777c208ead06d24b6c2937'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/wifichannelmonitor-x64.zip'
$checksum64 = '463bcf6ca4a24898530b3aab776299060c8aeaf84ffd807d1711853ae3e023c5'
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