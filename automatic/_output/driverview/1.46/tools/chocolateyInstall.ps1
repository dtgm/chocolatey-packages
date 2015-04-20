$packageName = 'driverview'
$url = 'http://www.nirsoft.net/utils/driverview.zip'
$checksum = 'ebe8c11ec93f056724ddd44d731f51ca700bfaa6'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/driverview-x64.zip'
$checksum64 = 'db85a0dbcdb5498f4bf46b20963ec09ffd9c09a6'
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