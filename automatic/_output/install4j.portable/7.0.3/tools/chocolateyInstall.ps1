$packageName = 'install4j.portable'
$url = 'https://download-keycdn.ej-technologies.com/install4j/install4j_windows_7_0_3.zip'
$checksum = '{checksum}'
$checksumType = 'sha256'
$url64 = 'https://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_7_0_3.zip'
$checksum64 = '{checksumx64}'
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