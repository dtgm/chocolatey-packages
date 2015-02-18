$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = '{{DownloadUrl}}'
$validExitCodes = @(0)
$checksum = '{{Checksum}}'
$checksumType = 'md5'
$checksumx64 = '{{Checksumx64}}'
$checksumTypex64 = $checksumType
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksumx64" -checksumType64 "$checksumTypex64"