$packageName = 'doxbox'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/t-d-k/doxbox/releases/download/v6.1-beta/InstallDoxBox_v61Beta.exe'
$checksum = '83d118677468cd4c088b87be71813379082a65ca'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
