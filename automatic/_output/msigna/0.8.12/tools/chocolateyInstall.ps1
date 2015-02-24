$packageName = 'msigna'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ciphrex.com/releases/win64/setup-0.8.12.exe'
$checksum = '4da07aa6fd21c4d3fb9187ea76c93e28e072201e'
$checksumType = 'sha1'
$url64 = 'https://ciphrex.com/releases/win64/setup-0.8.12.exe'
$checksum64 = '4da07aa6fd21c4d3fb9187ea76c93e28e072201e'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64" 
