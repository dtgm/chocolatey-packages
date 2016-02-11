$packageName = 'argyll'
$url = 'http://argyllcms.com/Argyll_V1.8.3_win32_exe.zip'
$checksum = 'eacc8fdf733f8ad14cec99e2231af58d55515717'
$checksumType = 'sha1'
$url64 = 'http://argyllcms.com/Argyll_V1.8.3_win64_exe.zip'
$checksum64 = '2bd09723ed6fd4013d921a67e6af698477d0cbd5'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"