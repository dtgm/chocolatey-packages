$packageName = 'openhardwaremonitor'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://openhardwaremonitor.org/files/openhardwaremonitor-v0.8.0-beta.zip'
$checksum = 'eba0f937f37901d86a245a4963049462c8ae30beafb05f08afed1bcdcc13634d'
$checksumType = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"