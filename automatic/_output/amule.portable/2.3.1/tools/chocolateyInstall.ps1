$packageName = 'amule.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/amule/files/aMule/2.3.1/aMule_2.3.1%20-%20Win32.zip/download'
$checksum = 'b8d96ed40194ee413d7f93f2f47641117e4c3871'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"