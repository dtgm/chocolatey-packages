$packageName = 'bulkrenameutility.portable'
$url = 'http://www.bulkrenameutility.co.uk//Downloads/BRU_NoInstall.zip'
$checksum = 'f7a6ca010d01222db64d5a3a8cc030e2de70e523'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"