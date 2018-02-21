$packageName = 'regscanner.portable'
$url = 'http://www.nirsoft.net/utils/regscanner.zip'
$checksum = 'd821aabb49992332a6d7511b20c44cc280b69cec205b1b2b1dc6b4123d7dd28e'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/regscanner-x64.zip'
$checksum64 = 'b57dd5c95dd68b4f849ebd52bf9a9d139c7cea9be8a3315d8156e2b67a267474'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "RegScanner.exe"

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