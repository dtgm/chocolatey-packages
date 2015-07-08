$packageName = 'install4j.portable'
$url = 'http://download-aws.ej-technologies.com/install4j/install4j_windows_6_0_3.zip'
$checksum = 'f12949658b450ef6a2a27a060048ef416bbf71a0'
$checksumType = 'sha1'
$url64 = 'http://download-aws.ej-technologies.com/install4j/install4j_windows-x64_6_0_3.zip'
$checksum64 = '4463f135a2023829847cb51ed2f2c2b19d3624ca'
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