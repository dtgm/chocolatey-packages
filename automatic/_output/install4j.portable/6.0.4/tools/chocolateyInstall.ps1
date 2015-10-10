$packageName = 'install4j.portable'
$url = 'http://download-aws.ej-technologies.com/install4j/install4j_windows_6_0_4.zip'
$checksum = 'dd626375873b1bb1a3de0da43fc3b8fe2a618f61'
$checksumType = 'sha1'
$url64 = 'http://download-aws.ej-technologies.com/install4j/install4j_windows-x64_6_0_4.zip'
$checksum64 = '9468d69fc5b55bff4fc2f3d0540d215b6f58591e'
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