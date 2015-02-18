$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = {{DownloadUrlx64}}
$url = $urlArray[0]
$url64 = $urlArray[1]
$validExitCodes = @(0)
#$checksum = '{{Checksum}}'
#$checksumType = 'sha1'
#$checksum64 = '{{Checksumx64}}'
#$checksumType64 = 'sha1'
#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes