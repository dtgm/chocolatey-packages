$packageName = 'thebrain.install'
$installerType = 'exe'
$url  = 'http://api.thebrain.com/?a=doDirectDownload&id=70'
$checksum = ''
$checksumType = 'sha1'
$url64 = '{url64}'
$checksum64 = ''
$checksumType64 = 'sha1'
$silentArgs = '-q -overwrite'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"