$packageName = 'duplicatecleaner'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://www.digitalvolcano.co.uk/download/DuplicateCleaner_setup.exe'
$checksum = '471EBEF588D9ECB471DB3B2EA755771B'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
