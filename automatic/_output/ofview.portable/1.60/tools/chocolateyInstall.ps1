$packageName = 'ofview.portable'
$url = 'http://www.nirsoft.net/utils/ofview.zip'
$checksum = 'bfaa2b0ccfea85599d61be1eb5a121c71c2ca927'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/ofview-x64.zip'
$checksum64 = 'dcecbea3d0646df49eea93dbb3473c25f9e963ce'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ofview.exe"

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