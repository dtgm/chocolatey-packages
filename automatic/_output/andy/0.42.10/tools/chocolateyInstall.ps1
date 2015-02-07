$packageName = 'andy'
$installerType = 'EXE'
$url = 'http://d1ubedgu4eka0j.cloudfront.net/ANDY/installer/v42/Andy_v42_10.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = 'bd4caa235d3b259ca199979b07b29a84'
$checksumType = 'md5'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"