$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = '/S'
$url = '{{DownloadUrl}}'
$validExitCodes = @(0)
$checksum = '{{Checksum}}'
$checksumType = 'md5'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"