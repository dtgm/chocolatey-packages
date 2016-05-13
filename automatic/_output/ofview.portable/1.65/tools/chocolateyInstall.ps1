$packageName = 'ofview.portable'
$url = 'http://www.nirsoft.net/utils/ofview.zip'
$checksum = '3c7d3951497cdb9ff0cb50f7fa070c66085f8052'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/ofview-x64.zip'
$checksum64 = 'a18da1cf997cf2def2eb87aa30a054c100687d21'
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