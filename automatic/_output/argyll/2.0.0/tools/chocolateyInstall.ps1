$packageName = 'argyll'
$url = 'http://argyllcms.com/Argyll_V2.0.0_win32_exe.zip'
$checksum = 'd5bdcdaa189869c501c69d2097efdefffffc2f9ff1182e1d2d9ab3e702c49ce5'
$checksumType = 'sha256'
$url64 = 'http://argyllcms.com/Argyll_V2.0.0_win64_exe.zip'
$checksum64 = '0ada6f91c483d9e54a6e9a306eadb7b142c778cdaea7393980ac02e7f1fceda3'
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