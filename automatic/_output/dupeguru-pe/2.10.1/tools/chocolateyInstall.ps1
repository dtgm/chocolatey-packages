$packageName = 'dupeguru-pe'
$installerType = 'msi'	
$silentArgs = '/qn /norestart'
$url = 'http://download.hardcoded.net/dupeguru_pe_win64_2.10.1.msi'
$checksum = '20185f839e497ad33fefd64236f415c6b6bc76b2'
$checksumType = 'sha1'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -Url "$url" -Url64bit "$url64" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64" 