$packageName = 'kodi'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://mirrors.xbmc.org/releases/win32/kodi-14.1-Helix.exe'
$url64 = $url
$validExitCodes = @(0)
$checksum = '554906c18bc18d2924bfd91a84ac58d9bb477870'
$checksumType = 'sha1'
$checksum64 = $checksum
$checksumType64 = 'sha1'
Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -Url "$url" -Url64bit "$url64" -silentArgs "$silentArgs" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumTypex64"
