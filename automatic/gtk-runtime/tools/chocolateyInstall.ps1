$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = '/S'
$url = {{DownloadUrlx64}}
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" 
