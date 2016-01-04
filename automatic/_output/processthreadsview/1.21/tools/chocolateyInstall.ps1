$packageName = 'processthreadsview'
$url = 'http://www.nirsoft.net/utils/processthreadsview.zip'
$checksum = 'd0556bcbc8e919322aceaf241f8fb5717cba1902'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/processthreadsview-x64.zip'
$checksum64 = '9dc8957dc52559bfb41ff575b8af317c4f16eb9b'
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