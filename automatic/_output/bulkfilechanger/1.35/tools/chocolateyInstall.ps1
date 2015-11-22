$packageName = 'bulkfilechanger'
$url = 'http://www.nirsoft.net/utils/bulkfilechanger.zip'
$checksum = '8e7967723bd0a31697882b0ce301a32c90937165'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/bulkfilechanger-x64.zip'
$checksum64 = '02567d2e74802198dda279a66798f23a089bc892'
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