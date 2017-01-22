$packageName = 'myeventviewer'
$url = 'http://www.nirsoft.net/utils/myeventviewer.zip'
$checksum = 'f3f9c2021185e6d4f5e89cf9b241eac67eb6e467db52cfe00370e40f07049313'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/myeventviewer-x64.zip'
$checksum64 = 'd1e94d89f2831c76d46bb0b80e4248df82244b021950769bffab9cba0054ecfc'
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