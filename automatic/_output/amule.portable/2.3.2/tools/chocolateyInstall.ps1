$packageName = 'amule.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/amule/files/aMule/2.3.2/aMule-2.3.2.zip'
$checksum = 'd82741ed3a0b5772401c9155f72ba960c5df0a55fa6b1170aa0ff7e332dbb1bc'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"