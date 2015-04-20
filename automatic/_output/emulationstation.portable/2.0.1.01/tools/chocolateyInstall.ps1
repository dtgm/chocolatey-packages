$packageName = 'emulationstation.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://emulationstation.org/downloads/releases/2.0.1a/emulationstation_2.0.1a_win32.zip'
$checksum = 'ef805394f13010e728c87ae6ba8366aa7e04db3d'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"