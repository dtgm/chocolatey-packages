$packageName = '{{PackageName}}'
$installerType = 'msi'	
$silentArgs = '/qn /norestart'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -Url "$url" -Url64bit "$url64" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64" 