$packageName = 'hashmyfiles'
$url = 'http://www.nirsoft.net/utils/hashmyfiles.zip'
$checksum = 'bba733a89b5ef682b82f0397ed6fd5222f2be1273a1c57758e76218d289d97bf'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/hashmyfiles-x64.zip'
$checksum64 = '4b1f4c9c0e104027a6cf0c88097ae42797f2d478c8e19894c7d0f62cb16a6e6a'
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