$packageName = 'dar'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://sourceforge.net/projects/dar/files/dar/2.5.8/dar64-2.5.8-win64.zip'
$checksum = '9c12f7f2518220651854d15a53d40e25494cbb0ec0d5704e3e5ac335ab6b500b'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"