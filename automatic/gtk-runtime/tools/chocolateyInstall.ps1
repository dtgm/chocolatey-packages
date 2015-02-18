$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = '/S'
$url = '{{DownloadUrlx64}}'
$validExitCodes = @(0)
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" 