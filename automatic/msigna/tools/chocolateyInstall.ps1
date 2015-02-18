$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$validExitCodes = @(0)
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$checksumx64 = '{{Checksumx64}}'
$checksumTypex64 = 'sha1'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksumx64" -checksumType64 "$checksumTypex64"