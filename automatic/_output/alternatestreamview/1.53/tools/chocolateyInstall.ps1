$packageName = 'alternatestreamview'
$url = 'http://www.nirsoft.net/utils/alternatestreamview.zip'
$checksum = '200fe195b4921792bc4ca0ca0cc7c6dbb993faad7d3829e7810aca94ad7043e0'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/alternatestreamview-x64.zip'
$checksum64 = 'f3e56ce823aca0811352f89ce2cdfe2802f92bfe669cdff406c5f498d04ab4e2'
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