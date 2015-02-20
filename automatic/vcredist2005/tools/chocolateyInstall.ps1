$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'
$installerType = 'exe'
$silentArgs = '/Q'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage -packageName "$packageName" -fileType "$installerType" -url "$url" -url64bit "$url64" -silentArgs "$silentArgs" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64" 
