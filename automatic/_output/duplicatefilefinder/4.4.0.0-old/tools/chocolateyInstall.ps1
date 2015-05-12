$packageName = 'duplicatefilefinder'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /TASKS=desktopicon'
$url = 'http://downloads.auslogics.com/en/duplicate-file-finder/duplicate-file-finder-setup.exe'
$checksum = 'bd3d1b25ff2f59ed396fa9e017560ad0b44d7fef'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
