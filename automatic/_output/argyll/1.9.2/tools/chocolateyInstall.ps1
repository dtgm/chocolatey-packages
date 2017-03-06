$packageName = 'argyll'
$url = 'http://argyllcms.com/Argyll_V1.9.2_win32_exe.zip'
$checksum = 'fbc4de3e0ad5c250e463b0f42fe3cf779fc5bc71a5da800f4135607ab2a3e114'
$checksumType = 'sha256'
$url64 = 'http://argyllcms.com/Argyll_V1.9.2_win64_exe.zip'
$checksum64 = 'd521825c2c7867477e607188e4e3606d39b98b469609c2da55d86813cfa39921'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"