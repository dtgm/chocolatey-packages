$packageName = 'thebrain.install'
$installerType = 'exe'
$url  = 'http://api.thebrain.com/?a=doDirectDownload&id=70'
$checksum = '7efe48c48bd260e4b0ee11f3e0aff00f3c01d631'
$checksumType = 'sha1'
$url64 = 'http://api.thebrain.com/?a=doDirectDownload%26id=76'
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'
$silentArgs = '-q -overwrite'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"