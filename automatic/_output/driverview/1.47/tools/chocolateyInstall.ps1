$packageName = 'driverview'
$url = 'http://www.nirsoft.net/utils/driverview.zip'
$checksum = 'fe71ba6b4ac6ef2176ad49f18dac3bb8b813bb77'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/driverview-x64.zip'
$checksum64 = 'f0d22c73ae180254fc19df5754958c46ef7a92aa'
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