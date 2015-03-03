$packageName = 'msigna'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ciphrex.com/releases/win64/setup-0.8.15.exe'
$checksum = '736874d773bd71d82a9c1f4eb9c692f40bb42921'
$checksumType = 'sha1'
$url64 = 'https://ciphrex.com/releases/win64/setup-0.8.15.exe'
$checksum64 = '736874d773bd71d82a9c1f4eb9c692f40bb42921'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64" 
