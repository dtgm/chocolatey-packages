$packageName = 'produkey.portable'
$url = 'http://www.nirsoft.net/utils/produkey.zip'
$checksum = 'e1a416de599689643b789bbb7a666c9bb03006260b6dfdb09e7f892772fee937'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/produkey-x64.zip'
$checksum64 = '39aae02c2c1aa71bca531deeea855cea519fd132e5fe0a5eeb4100b36519c10c'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "produkey.exe"

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