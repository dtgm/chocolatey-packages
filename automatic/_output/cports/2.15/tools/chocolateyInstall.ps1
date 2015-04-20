$packageName = 'cports'
$url = 'http://www.nirsoft.net/utils/cports.zip'
$checksum = 'cb14a59efa2033c08b73e0dfc1bc97d214fc6a52'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/cports-x64.zip'
$checksum64 = '0928b2d369463fa56523f320a8ded53f68dba589'
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