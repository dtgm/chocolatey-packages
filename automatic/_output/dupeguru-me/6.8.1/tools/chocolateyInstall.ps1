$packageName = 'dupeguru-me'
$installerType = 'msi'	
$silentArgs = '/qn /norestart'
$url = 'http://download.hardcoded.net/dupeguru_me_win64_6.8.1.msi'
$checksum = '201b763b40b01e22553d5ccb2f6ff8c9f6134143'
$checksumType = 'sha1'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -Url "$url" -Url64bit "$url64" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64" 