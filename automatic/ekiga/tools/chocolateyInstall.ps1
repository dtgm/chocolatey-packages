$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = '/S'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"