$packageName = 'bulkfilechanger'
$url = 'http://www.nirsoft.net/utils/bulkfilechanger.zip'
$checksum = 'c3aee9f20e51ea6711d062af8513967ba6c3f85d'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/bulkfilechanger-x64.zip'
$checksum64 = 'a2eeedb735876b23907082e5ed7c131474a4cdf5'
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