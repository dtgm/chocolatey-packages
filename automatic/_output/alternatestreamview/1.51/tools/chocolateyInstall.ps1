$packageName = 'alternatestreamview'
$url = 'http://www.nirsoft.net/utils/alternatestreamview.zip'
$checksum = 'ce413a33c0f443a3f8220cfc71747b25f93ae9c0'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/alternatestreamview-x64.zip'
$checksum64 = '7651717683913427b898647d6344fcf5763feb38'
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