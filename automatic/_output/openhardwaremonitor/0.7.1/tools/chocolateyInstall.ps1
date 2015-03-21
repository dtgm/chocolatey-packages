$packageName = 'openhardwaremonitor'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://openhardwaremonitor.org/files/openhardwaremonitor-v0.7.1-beta.zip'
$checksum = '5446869281883c102f4180cf87385a124eadf87d'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"