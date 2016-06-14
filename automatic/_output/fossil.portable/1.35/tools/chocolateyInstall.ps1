$packageName = 'fossil.portable'
$url = 'https://www.fossil-scm.org/download/fossil-w32-1.35.zip'
$checksum = '3d15b09b743bae06aba58caec98c8fde834d45cfd5f6705d0fcbc5cb7d7d0f01'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"