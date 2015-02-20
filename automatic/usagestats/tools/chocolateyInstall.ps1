$packageName = '{{PackageName}}'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -packageName "$packageName" -installerType "$installerType" -url "$url" -silentArgs "$silentArgs" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
