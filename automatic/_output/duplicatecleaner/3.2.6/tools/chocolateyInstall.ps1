$packageName = 'duplicatecleaner'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://www.digitalvolcano.co.uk/download/DuplicateCleaner_setup.exe'
$validExitCodes = @(0)
$checksum = 'B5C2077084B67A26FFD090D29F649D0C'
$checksumType = 'md5'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"