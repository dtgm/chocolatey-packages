$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = '/S'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
