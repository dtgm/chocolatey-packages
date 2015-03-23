$packageName = 'hddguardian'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://hddguardian.codeplex.com/downloads/get/1437868'
$checksum = 'c72419f9a8951f3d812d8d3119011fd6b07f719a'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"