$packageName = 'duplicatecleaner'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://www.digitalvolcano.co.uk/download/DuplicateCleaner_setup.exe'
$checksum = ''
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
