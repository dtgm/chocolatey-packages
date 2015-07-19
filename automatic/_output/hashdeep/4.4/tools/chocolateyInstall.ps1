$packageName = 'hashdeep'
$url = 'https://github.com//jessek/hashdeep/releases/download/v4.4/md5deep-4.4.zip'
$checksum = '047ff5311d821f667150f37695bd01b3'
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"