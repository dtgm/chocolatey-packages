$packageName = "rhash"
$urlArray = @('https://sourceforge.net/projects/rhash/files/rhash/1.3.5/rhash-1.3.5-win32.zip/download', 'https://sourceforge.net/projects/rhash/files/rhash/1.3.5/rhash-1.3.5-win64.zip/download')
$url = $urlArray[0]
$url64 = $urlArray[1]
$checksum = '82a79edf6c35146aa32731d614b77ddc246b5c3181ad9be9ae830b725ed0e423'
$checksumType = 'sha256'
$checksum64 = 'bb05414ef3e2eb5d24f3de381d1459984798b10f69c3ff69391596688d68cb1e'
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