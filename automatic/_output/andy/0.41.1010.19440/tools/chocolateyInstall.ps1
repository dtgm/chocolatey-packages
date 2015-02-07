$packageName = 'andy'
$installerType = 'EXE'
$url = 'http://d1ubedgu4eka0j.cloudfront.net/ANDY/installer/v41/Andy_v41_12.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes